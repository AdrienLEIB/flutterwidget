import 'package:flutter/material.dart';
import 'package:widget/fonction/firestoreHelper.dart';
import 'package:widget/model/Utilisateur.dart';


class profilPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return profilPageState();
  }

}

class profilPageState extends State<profilPage>{
  String identifiant = '';
  Utilisateur utilisateur = Utilisateur.initialize();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    identifiant = firestoreHelper().getItendifiant();
    firestoreHelper().getUtilisateur(identifiant).then((value){
      setState((){
        utilisateur = value;
      });
    });
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


  Widget bodyPage(){
    return Column(
      children: [
        Text("Je vais affaicher les informations de la base de donnée"),
        Text('Nom : ${utilisateur.nom}'),
        Text('Prenom : ${utilisateur.prenom}'),
        Text('Adress : ${utilisateur.adresse}'),
        Text('isMan : ${utilisateur.isMan}'),
        Text('Loisirs : ${utilisateur.loisirs}'),

      ],
    );
  }

}