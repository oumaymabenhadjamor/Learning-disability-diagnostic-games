import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel{
  static const ID = "id";
  static const UD = "ud";
  static const NAME = "name";
  static const EMAIL = "email";
  static const AGE = "age";
  static const CLASS_ID = "classId";
  static const IMAGE = "image";
  static const NIVEAU = "niveau";
  String _classId;
  String _name;
  String _email;
  String _id;
  String _ud;
  String _age ;
  String _image;
  int _niveau;

//  getters
  String get name => _name;
  String get id => _id;
  String get idd => _ud;
  String get email => _email;
  String get age => _age;
  String get classId => _classId;
  String get image => _image;

  int get niveau => _niveau;
     UserModel.fromSnapshot(DocumentSnapshot snapshot){
    _name = snapshot.data[NAME];
    _id = snapshot.data[ID];
    _ud = snapshot.data[UD];
    _email = snapshot.data[EMAIL];
    _age = snapshot.data[AGE];
    _classId = snapshot.data[CLASS_ID];
    _image = snapshot.data[IMAGE];

    _niveau = snapshot.data[NIVEAU];

  }

}

