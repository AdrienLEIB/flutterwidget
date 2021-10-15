import 'package:flutter/material.dart';
import 'package:widget/informationUser.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:widget/fonction/firestoreHelper.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return loginState();
  }

}

class loginState extends State<login>{
  String password = '';
  String mail = '';

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
            ElevatedButton(
              onPressed: (){
                firestoreHelper().connexion(mail, password).then((value){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context){
                      return informationUser(prenom: "coucou");
                    }
                  ));
                }).catchError((error){
                  print(error);
                  ScaffoldMessenger.of(context).showSnackBar(MonSnackbar());
                })
                ;
              },
              child: Text('Login'),
            ),

          ]),
    );
  }

  MonSnackbar(){
    return SnackBar(
        duration: Duration(seconds: 10),
        backgroundColor: Colors.red,
        content: Text('Erreur de connexion !!!!!')
    );
  }


}

