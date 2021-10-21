import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:widget/fonction/firestoreHelper.dart';
import 'package:widget/model/Utilisateur.dart';




class getAllPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return getAllPageState();
  }

}

class getAllPageState extends State<getAllPage> {
  List<Utilisateur> utilisateurs = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Information User'),
      ),
      body: bodyPage(),
    );
  }


  Widget bodyPage() {
    return StreamBuilder<QuerySnapshot>(
      stream: firestoreHelper().firestore_user.snapshots(),
      builder: ( context,  snapshot){
        if (snapshot.hasData){
          return ListView.builder(
          itemCount: snapshot.data!.docs.length,
            itemBuilder: (BuildContext context, int index){
            Utilisateur utilisateur = Utilisateur(snapshot.data!.docs[index]);
                return InkWell(

                  child : Column(
                    children:
                      <Widget>[
                        Text(' Nom : ${utilisateur.nom}'),
                        Text(' Prenom : ${utilisateur.prenom}'),
                        Text('_______________________'),
                  ]
                  ),
                  onTap: (){
                    print('${utilisateur.identifiant}');
                  },
                );
            }
          );
        }
        else{
          return Text(' Il y a r');
        }
      },

    );
  }

}