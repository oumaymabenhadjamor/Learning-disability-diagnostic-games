import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diag/models/classe.dart';
import 'package:diag/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';


class TestServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String collection = "Testes";
  Firestore _firestore = Firestore.instance;



  Future<void> createTestDyspraxie({String id,String maladie, int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie,String userId,enseignantId,classId,etat})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;

    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    if(snapShot2.exists){
      Firestore.instance
          .collection(collection).document(idd).updateData({


        "scoreDyspraxie": scoreDyspraxie,
      });
    }else{
      Firestore.instance
          .collection(collection).document(idd).setData({
        "id": user.uid,
        "maladie": maladie,
        "scoreDyslexie": scoreDyslexie,
        "scoreDyscalculie": scoreDyscalculie,
        "scoreDysorthographie": scoreDysorthographie,
        "scoreDysphasie": scoreDysphasie,
        "scoreDyspraxie": scoreDyspraxie,
        "scoreMyopie": scoreMyopie,
        "scoreColorBlind": scoreColorBlind,
        "userId": user.uid,
        "enseignantId": enseignantId,
        "classId": classId,
        "etat": etat,
      });}

  }


  Future<void> createTesteDysphasie({String id,String maladie, int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie,String userId,enseignantId,classId,etat})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;

    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    if(snapShot2.exists){
      Firestore.instance
          .collection(collection).document(idd).updateData({


        "scoreDysphasie": scoreDysphasie,

      });
    }else{
      Firestore.instance
          .collection(collection).document(idd).setData({
        "id": user.uid,
        "maladie": maladie,
        "scoreDyslexie": scoreDyslexie,
        "scoreDyscalculie": scoreDyscalculie,
        "scoreDysorthographie": scoreDysorthographie,
        "scoreDysphasie": scoreDysphasie,
        "scoreDyspraxie": scoreDyspraxie,
        "scoreMyopie": scoreMyopie,
        "scoreColorBlind": scoreColorBlind,
        "userId": user.uid,
        "enseignantId": enseignantId,
        "classId": classId,
        "etat": etat,
      });}

  }


  Future<void> createTestDysorthographie({String id,String maladie, int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie,String userId,enseignantId,classId,etat})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;

    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    if(snapShot2.exists){
      Firestore.instance
          .collection(collection).document(idd).updateData({


        "scoreDysorthographie": scoreDysorthographie,

      });
    }else{
      Firestore.instance
          .collection(collection).document(idd).setData({
        "id": user.uid,
        "maladie": maladie,
        "scoreDyslexie": scoreDyslexie,
        "scoreDyscalculie": scoreDyscalculie,
        "scoreDysorthographie": scoreDysorthographie,
        "scoreDysphasie": scoreDysphasie,
        "scoreDyspraxie": scoreDyspraxie,
        "scoreMyopie": scoreMyopie,
        "scoreColorBlind": scoreColorBlind,
        "userId": user.uid,
        "enseignantId": enseignantId,
        "classId": classId,
        "etat": etat,
      });}

  }


  Future<void> createTestDyscal({String id,String maladie, int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie,String userId,enseignantId,classId,etat})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;

    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    if(snapShot2.exists){
      Firestore.instance
          .collection(collection).document(idd).updateData({


        "scoreDyscalculie": scoreDyscalculie,

      });
    }else{
      Firestore.instance
          .collection(collection).document(idd).setData({
        "id": user.uid,
        "maladie": maladie,
        "scoreDyslexie": scoreDyslexie,
        "scoreDyscalculie": scoreDyscalculie,
        "scoreDysorthographie": scoreDysorthographie,
        "scoreDysphasie": scoreDysphasie,
        "scoreDyspraxie": scoreDyspraxie,
        "scoreMyopie": scoreMyopie,
        "scoreColorBlind": scoreColorBlind,
        "userId": user.uid,
        "enseignantId": enseignantId,
        "classId": classId,
        "etat": etat,
      });}

  }
  Future<void> createTestDyslexie({String id,String maladie, int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie,String userId,enseignantId,classId,etat})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;

    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    if(snapShot2.exists){
      Firestore.instance
          .collection(collection).document(idd).updateData({

        "scoreDyslexie": scoreDyslexie,

      });
    }else{
      Firestore.instance
          .collection(collection).document(idd).setData({
        "id": user.uid,
        "maladie": maladie,
        "scoreDyslexie": scoreDyslexie,
        "scoreDyscalculie": scoreDyscalculie,
        "scoreDysorthographie": scoreDysorthographie,
        "scoreDysphasie": scoreDysphasie,
        "scoreDyspraxie": scoreDyspraxie,
        "scoreMyopie": scoreMyopie,
        "scoreColorBlind": scoreColorBlind,
        "userId": user.uid,
        "enseignantId": enseignantId,
        "classId": classId,
        "etat": etat,
      });}

  }Future<void> createTestMyop({String id,String maladie, int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie,String userId,enseignantId,classId,etat})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;

    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    if(snapShot2.exists){
      Firestore.instance
          .collection(collection).document(idd).updateData({


        "scoreMyopie": scoreMyopie,

      });
    }else{
      Firestore.instance
          .collection(collection).document(idd).setData({
        "id": user.uid,
        "maladie": maladie,
        "scoreDyslexie": scoreDyslexie,
        "scoreDyscalculie": scoreDyscalculie,
        "scoreDysorthographie": scoreDysorthographie,
        "scoreDysphasie": scoreDysphasie,
        "scoreDyspraxie": scoreDyspraxie,
        "scoreMyopie": scoreMyopie,
        "scoreColorBlind": scoreColorBlind,
        "userId": user.uid,
        "enseignantId": enseignantId,
        "classId": classId,
        "etat": etat,
      });}

  }

  Future<void> createTestDalto({String id,String maladie, int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie,String userId,enseignantId,classId,etat})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;

    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    if(snapShot2.exists){
      Firestore.instance
          .collection(collection).document(idd).updateData({


        "scoreColorBlind": scoreColorBlind,

      });
    }else{
      Firestore.instance
          .collection(collection).document(idd).setData({
        "id": user.uid,
        "maladie": maladie,
        "scoreDyslexie": scoreDyslexie,
        "scoreDyscalculie": scoreDyscalculie,
        "scoreDysorthographie": scoreDysorthographie,
        "scoreDysphasie": scoreDysphasie,
        "scoreDyspraxie": scoreDyspraxie,
        "scoreMyopie": scoreMyopie,
        "scoreColorBlind": scoreColorBlind,
        "userId": user.uid,
        "enseignantId": enseignantId,
        "classId": classId,
        "etat": etat,
      });}

  }

  Future<List<UserModel>> getDetailsUser({String id}) async =>
      _firestore
          .collection("users")
          .where("uid", isEqualTo: id)
          .getDocuments()
          .then((result) {
        List<UserModel> eleves = [];
        for (DocumentSnapshot eleve in result.documents) {
          eleves.add(UserModel.fromSnapshot(eleve));
        }
        return eleves;
      });

  Future<List<ClassModel>> getEnseignantByUser({String id}) async =>
      _firestore
          .collection("classes")
          .where("id", isEqualTo: id)
          .getDocuments()
          .then((result) {
        List<ClassModel> enseignants = [];
        for (DocumentSnapshot enseignant in result.documents) {
          enseignants.add(ClassModel.fromSnapshot(enseignant));
        }
        return enseignants;
      });
  }


