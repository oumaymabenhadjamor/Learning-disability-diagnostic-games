import 'package:diag/helpers/user.dart';
import 'package:diag/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';
enum Status{Uninitialized, Authenticated, Authenticating, Unauthenticated}

class UserProvider with ChangeNotifier {

  FirebaseAuth _auth;
  FirebaseUser _user;
  Status _status = Status.Uninitialized;
  Firestore _firestore = Firestore.instance;
  UserServices _userServicse = UserServices();

  UserModel _userModel;
  UserModel get userModel => _userModel;
  Status get status => _status;
  FirebaseUser get user => _user;
  final formkey = GlobalKey<FormState>();
int niveau;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController age = TextEditingController();
  UserProvider.initialize(): _auth = FirebaseAuth.instance{
    _auth.onAuthStateChanged.listen(_onStateChanged);
  }
  Future<bool> signIn()async{
    try{
      _status = Status.Authenticating;

      notifyListeners();
      await _auth.signInWithEmailAndPassword(email: email.text.trim()+"@3Dwave.com", password: password.text.trim()+"1996");
      return true;
    }catch(e){
      _status = Status.Unauthenticated;
      notifyListeners();
      print(e.toString());
      return false;
    }
  }


  Future<bool> signUp()async{
    try{
      _status = Status.Authenticating;
      notifyListeners();
      final snapShot =  Firestore.instance.collection('users').where("email", isEqualTo: email.text.trim() + "@3Dwave.com").where("password",isEqualTo: password.text.trim() + "1996");
      snapShot.getDocuments().then((resul) async {


   var id=resul.documents.first["uid"];
//var doc =resul.documents.first.reference.documentID.;
         await _auth.createUserWithEmailAndPassword(
             email: email.text.trim() + "@3Dwave.com",
            password: password.text.trim() + "1996").then((result) {
          _firestore.collection('users').document(id).updateData({
            'uid':result.user.uid,
            'ud':result.user.uid,
          });
         });
         return true;
    });
    }catch(e){
      _status = Status.Unauthenticated;
      notifyListeners();
      print(e.toString());
      return false;
    }
  }

  Future signOut()async{
    _auth.signOut();
    _status = Status.Unauthenticated;
    notifyListeners();
    return Future.delayed(Duration.zero);
  }

  void clearController(){
    name.text = "";
    email.text = "";
    password.text = "";
    age.text = "";
  }

  Future<void> reloadUserModel()async{

    _userModel = await _userServicse.getUserById(user.uid);
    notifyListeners();
  }


  Future<void> _onStateChanged(FirebaseUser firebaseUser) async{
    if(firebaseUser == null){
      _status = Status.Unauthenticated;
    }else{
      _user = firebaseUser;
      _status = Status.Authenticated;
      _userModel = await _userServicse.getUserById(user.uid);
    }
    notifyListeners();
  }

  Future<bool> UpdateNiveau()async{
    notifyListeners();
    try{
    
      _userServicse.UpdateNiveau(
         niveau: niveau,
           );

      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }
}