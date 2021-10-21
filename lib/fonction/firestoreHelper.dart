import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:widget/model/Utilisateur.dart';
import 'package:widget/model/Utilisateur.dart';

class firestoreHelper{
  final authBase = FirebaseAuth.instance;

  final instanceFirestore = FirebaseFirestore.instance;
  final firestore_user = FirebaseFirestore.instance.collection('utilisateur');
  final instanceFirestorage = FirebaseStorage.instance;

  Future <User> inscription(String mail, String password) async{
    final authResult = await authBase.createUserWithEmailAndPassword(email: mail, password: password);
    final user=authResult.user;
    // String identifiant = user!.uid;

    // User user;
    return user!;

  }


  Future <User> connexion(String mail, String password) async{
    final authResult = await authBase.signInWithEmailAndPassword(email: mail, password: password);
    final user=authResult.user;
    // String identifiant = user!.uid;

    // User user;
    return user!;

  }

  String getItendifiant(){
    String identifiant = authBase.currentUser!.uid;
    return identifiant;
  }

  addUser(Map <String,dynamic> map ,String uid){
    firestore_user.doc(uid).set(map);

  }
/*
  Future<String> getIdentifiant() async{

    String identifiant= await authBase.currentUser!.uid;

    return identifiant;

  }
  */

  Future<Utilisateur> getUtilisateur(String uid) async{

    DocumentSnapshot snap = await firestore_user.doc(uid).get();

    return Utilisateur(snap);
  }



  Future<List<Utilisateur>> getUtilisateurs() async{

    List<Utilisateur> utilisateurs = [];
    QuerySnapshot snaps = await firestore_user.get();
    print(snaps);
    print('__________________ tototo');
    return utilisateurs;

  }



}
