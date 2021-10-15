import 'package:flutter/material.dart';
import 'package:widget/informationUser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:widget/fonction/firestoreHelper.dart';

class register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return registerState();
  }

}

class registerState extends State<register>{
  String password = '';
  String prenom = '';
  String mail = '';
  String sexe = '';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Deuxième page'),
      ),
      body: bodyPage(),
    );
  }

  Widget bodyPage(){
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
/*
              TextField(onChanged:(String text){
                setState((){
                  prenom = text;
                });

              },
                decoration: const InputDecoration(
                  hintText: 'Prenom',
                ),
              ),

              TextField(onChanged:(String text){
                setState((){
                  sexe = text;
                });

              },
                decoration: const InputDecoration(
                  hintText: 'Sexe',
                ),
              ),
*/
              TextField(onChanged:(String text){
                setState((){
                  mail = text;
                });

              },

                decoration: const InputDecoration(
                  hintText: 'mail',
                ),
              ),

              TextField(onChanged:(String text){
                setState((){
                  password = text;
                });

              },
                obscureText: true,
                decoration: const InputDecoration(

                  hintText: 'Password',
                ),
              ),
              /*
              ElevatedButton(
                onPressed: (){
                  print('Changement de page');
                  Navigator.push(context, MaterialPageRoute(
                      builder: (BuildContext context){ return informationUser(prenom: prenom, mail: mail, sexe: sexe, password: password);}
                  ));
                },
                child: Text('Changer de page'),
              ), */

              ElevatedButton(
              /*
                List loisirs = [];
*/
                onPressed: (){
                  /*
                  Map<String, dynamic> map =  {
                    "prenom": prenom,
                    "sexe": sexe,
                    "nom": "nom",
                    "pseudo": "pseudo",
                    "adresse": "adresse",
                    "isMan": true,
                    "anniversaire": "06101999",

                  };

               */
                  firestoreHelper().inscription(mail, password).then((value){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context){
                          return informationUser(prenom: "coucou");
                        }
                    ));
                  }).catchError((error){
                    MonDialogue();
                  });
                },
                child: Text('S\'inscrire'),
              ),

            ]),
      );
  }

  MonDialogue(){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            content: Text('Erreur le de l\'inscription'),
            actions: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Ok'),
              ),
              ElevatedButton(
                onPressed: (){

                },
                child: Text('Annuler'),
              )
            ]
          );
        }
    );
  }
}