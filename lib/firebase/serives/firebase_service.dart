import 'package:batch2/firebase/home_screen.dart';
import 'package:batch2/firebase/login_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FirebaseService{
  signUp({required String emailAddress, required String password, context}) async
  {
    try {
      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
    if(data.user!.uid.isNotEmpty)
    {
      Navigator.push(context, MaterialPageRoute(builder: (cotext)=>HomeScreen()));
    }
    else
    {
      Navigator.push(context, MaterialPageRoute(builder: (cotext)=>LoginScreen()));
    }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  signIn({required String emailAddress, required String password, context}) async{
  try {
    var data = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailAddress,
      password: password
    );
    if(data.user!.uid.isNotEmpty)
    {
      Navigator.push(context, MaterialPageRoute(builder: (cotext)=>HomeScreen()));
    }
    else
    {
      Navigator.push(context, MaterialPageRoute(builder: (cotext)=>LoginScreen()));
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}

addNote({required String title, required String description}) async {
  await FirebaseFirestore.instance.collection('Notes').add({
    'title' : title,
    'description' : description,
  });
}

getNotes(){
  Stream<QuerySnapshot> data = FirebaseFirestore.instance.collection('Notes').snapshots();
  return data;
}

updateNote({required String id,required String title, required String description}) async {
  await FirebaseFirestore.instance.collection('Notes').doc(id).update({
    'title' : title,
    'description' : description,
  });
}

deleteNote({required String id}) async {
  await FirebaseFirestore.instance.collection('Notes').doc(id).delete();
}
}
