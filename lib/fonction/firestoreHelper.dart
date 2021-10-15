import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

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

  String getIdentifiant(){

    String identifiant=authBase.currentUser!.uid;

    return identifiant;

  }

  /*
  Future <User> getUser(String uid) async{

  }
  */


}
