

import 'package:diag/helpers/Testes.dart';
import 'package:diag/models/classe.dart';
import 'package:diag/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

class TestProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  TestServices _testServices = TestServices();

  List<UserModel> eleves=[];
  List<ClassModel> enseigants=[];
  String maladie ,etat,enseignantId,classId;
  int scoreDyslexie,scoreMyopie,scoreDyspraxie,scoreDysphasie,scoreColorBlind,scoreDyscalculie,scoreDysorthographie;


  TestProvider.initialize() {


  }

  Future<bool> createTestMyop()async{
    notifyListeners();
    try{
      var uuid = Uuid();
      String id = uuid.v4();
      final FirebaseUser user = await _auth.currentUser();

      _testServices.createTestMyop(

          maladie: maladie,
          scoreDyslexie: scoreDyslexie,
scoreDyscalculie: scoreDyscalculie,
          scoreDysorthographie: scoreDysorthographie,
          scoreDysphasie: scoreDysphasie,
          scoreDyspraxie: scoreDyspraxie,
          scoreMyopie:scoreMyopie,
          scoreColorBlind:scoreColorBlind,
          userId:user.uid,
          enseignantId:enseignantId,
          classId:classId,
          etat:etat
         );
//      }
      //


      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }
  Future<bool> createTestDalto()async{
    notifyListeners();
    try{
      var uuid = Uuid();
      String id = uuid.v4();
      final FirebaseUser user = await _auth.currentUser();

      _testServices.createTestDalto(

          maladie: maladie,
          scoreDyslexie: scoreDyslexie,
          scoreDyscalculie: scoreDyscalculie,
          scoreDysorthographie: scoreDysorthographie,
          scoreDysphasie: scoreDysphasie,
          scoreDyspraxie: scoreDyspraxie,
          scoreMyopie:scoreMyopie,
          scoreColorBlind:scoreColorBlind,
          userId:user.uid,
          enseignantId:enseignantId,
          classId:classId,
          etat:etat
      );
//      }
      //


      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }
  Future<bool> createTestDyscal()async{
    notifyListeners();
    try{
      var uuid = Uuid();
      String id = uuid.v4();
      final FirebaseUser user = await _auth.currentUser();

      _testServices.createTestDyscal(

          maladie: maladie,
          scoreDyslexie: scoreDyslexie,
          scoreDyscalculie: scoreDyscalculie,
          scoreDysorthographie: scoreDysorthographie,
          scoreDysphasie: scoreDysphasie,
          scoreDyspraxie: scoreDyspraxie,
          scoreMyopie:scoreMyopie,
          scoreColorBlind:scoreColorBlind,
          userId:user.uid,
          enseignantId:enseignantId,
          classId:classId,
          etat:etat
      );
//      }
      //


      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }
  Future<bool> createTestDyslexie()async{
    notifyListeners();
    try{
      var uuid = Uuid();
      String id = uuid.v4();
      final FirebaseUser user = await _auth.currentUser();

      _testServices.createTestDyslexie(

          maladie: maladie,
          scoreDyslexie: scoreDyslexie,
          scoreDyscalculie: scoreDyscalculie,
          scoreDysorthographie: scoreDysorthographie,
          scoreDysphasie: scoreDysphasie,
          scoreDyspraxie: scoreDyspraxie,
          scoreMyopie:scoreMyopie,
          scoreColorBlind:scoreColorBlind,
          userId:user.uid,
          enseignantId:enseignantId,
          classId:classId,
          etat:etat
      );
//      }
      //


      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }
  Future<bool> createTestDysorthographie()async{
    notifyListeners();
    try{
      var uuid = Uuid();
      String id = uuid.v4();
      final FirebaseUser user = await _auth.currentUser();

      _testServices.createTestDysorthographie(

          maladie: maladie,
          scoreDyslexie: scoreDyslexie,
          scoreDyscalculie: scoreDyscalculie,
          scoreDysorthographie: scoreDysorthographie,
          scoreDysphasie: scoreDysphasie,
          scoreDyspraxie: scoreDyspraxie,
          scoreMyopie:scoreMyopie,
          scoreColorBlind:scoreColorBlind,
          userId:user.uid,
          enseignantId:enseignantId,
          classId:classId,
          etat:etat
      );
//      }
      //


      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }
  Future<bool> createTestDyspraxie()async{
    notifyListeners();
    try{
      var uuid = Uuid();
      String id = uuid.v4();
      final FirebaseUser user = await _auth.currentUser();

      _testServices.createTestDyspraxie(

          maladie: maladie,
          scoreDyslexie: scoreDyslexie,
          scoreDyscalculie: scoreDyscalculie,
          scoreDysorthographie: scoreDysorthographie,
          scoreDysphasie: scoreDysphasie,
          scoreDyspraxie: scoreDyspraxie,
          scoreMyopie:scoreMyopie,
          scoreColorBlind:scoreColorBlind,
          userId:user.uid,
          enseignantId:enseignantId,
          classId:classId,
          etat:etat
      );
//      }
      //


      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }
  Future<bool> createTestDysphasie()async{
    notifyListeners();
    try{
      var uuid = Uuid();
      String id = uuid.v4();
      final FirebaseUser user = await _auth.currentUser();

      _testServices.createTesteDysphasie(

          maladie: maladie,
          scoreDyslexie: scoreDyslexie,
          scoreDyscalculie: scoreDyscalculie,
          scoreDysorthographie: scoreDysorthographie,
          scoreDysphasie: scoreDysphasie,
          scoreDyspraxie: scoreDyspraxie,
          scoreMyopie:scoreMyopie,
          scoreColorBlind:scoreColorBlind,
          userId:user.uid,
          enseignantId:enseignantId,
          classId:classId,
          etat:etat
      );
//      }
      //


      return true;
    }catch(e){
      print("THE ERROR ${e.toString()}");
      return false;
    }

  }

  Future loadDetailsUser({String id})async{
    FirebaseUser user = await _auth.currentUser();
    eleves = await _testServices.getDetailsUser(id:user.uid);
    notifyListeners();
  }
  Future loadEnseignantByUser({String id})async{

    enseigants = await _testServices.getEnseignantByUser(id:id);
    notifyListeners();
  }











}