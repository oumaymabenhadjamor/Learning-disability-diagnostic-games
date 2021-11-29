import 'package:diag/models/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
class UserServices{
  String collection = "users";
  Firestore _firestore = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void createUser(Map<String, dynamic> values) {
    String id = values["id"];
    _firestore.collection(collection).document(id).setData(values);
  }

  void updateUserData(Map<String, dynamic> values){
    _firestore.collection(collection).document(values['id']).updateData(values);
  }



  Future<void> UpdateNiveau({int niveau})  async {
    final FirebaseUser user = await _auth.currentUser();
    var idd=user.uid;
    final id = await Firestore.instance.collection(collection).where("uid",isEqualTo: idd);
    final snapShot2 = await Firestore.instance.collection(collection).document(idd).get();

    id.getDocuments().then((resul) async {
      var doc =resul.documents.first.reference.documentID;
      Firestore.instance
          .collection(collection).document(doc).updateData({
        "niveau": niveau,
      });
    });

  }


  Future<UserModel> getUserById(String id) => _firestore.collection(collection).document(id).get().then((doc){
    return UserModel.fromSnapshot(doc);
  });
}