import 'package:diag/providers/Test.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/screens/Daltonisme/DaltonismeScreen7.dart';
import 'package:diag/screens/Dyscalculie/DyscalculieScreen1.dart';
import 'package:diag/screens/Dyslexie/DyslexieScreen5-3.dart';
import 'package:diag/screens/Dysphasie/DysphasieScreen1.dart';
import 'package:diag/screens/Dyspraxie/DyspraxieScreen3.dart';
import 'package:diag/screens/Myopie/MyopieScreen1.dart';
import 'package:diag/screens/helloScreen.dart';
import 'package:diag/screens/loginScreen.dart';
import 'package:diag/widget/screen_navigation.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatelessWidget {
  MapScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final testt = Provider.of<TestProvider>(context);
    final user = Provider.of<UserProvider>(context);
    testt.loadDetailsUser();
    testt.loadEnseignantByUser(id:testt.eleves.first.classId);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -5.0, end: -5.0),
            Pin(start: -7.0, end: -135.0),
            child:
                // Adobe XD layer: 'map2' (shape)
                 Container(
              decoration: BoxDecoration(

                  image: DecorationImage(
                    image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/map.png?alt=media&token=651b4188-81d3-47e0-a2a4-a4b0f012c048"),
                    fit: BoxFit.fill,
                  ),
              ),
            ),

          ),
          Pinned.fromPins(
            Pin(size: 55.0, middle: 0.5016),
            Pin(size: 51.0, end: 71.0),
            child:
                // Adobe XD layer: 'illustr-removebg-pr…' (shape)
                GestureDetector(
                  onTap: (){ user.niveau=1;
                  user.UpdateNiveau();
                  changeScreenReplacement(context, DaltonismeScreen7());},
                  child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/level.png?alt=media&token=7a0fa9af-94dc-491d-a849-52f88a0ff13b"),
                    fit: BoxFit.fill,
                  ),
              ),
            ),
                ),
          ),
          Pinned.fromPins(
            Pin(size: 48.0, middle: 0.8045),
            Pin(size: 44.0, middle: 0.7651),
            child:
                // Adobe XD layer: 'illustr-removebg-pr…' (shape)
                GestureDetector(
                  onTap: (){
                    user.niveau=1;
                    user.UpdateNiveau();
                    changeScreenReplacement(context, DyscalculieScreen1());
                  },
                  child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/level.png?alt=media&token=7a0fa9af-94dc-491d-a849-52f88a0ff13b"),
                    fit: BoxFit.fill,
                  ),
              ),
            ),
                ),
          ),
          Pinned.fromPins(
            Pin(size: 51.0, middle: 0.5372),
            Pin(size: 47.0, middle: 0.6897),
            child:
                // Adobe XD layer: 'illustr-removebg-pr…' (shape)
                GestureDetector(
                  onTap: (){
                    user.niveau=1;
                    user.UpdateNiveau();
                    changeScreenReplacement(context, DyslexieScreen53());
                  },
                  child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/level.png?alt=media&token=7a0fa9af-94dc-491d-a849-52f88a0ff13b"),
                    fit: BoxFit.fill,
                  ),
              ),
            ),
                ),
          ),
          Pinned.fromPins(
            Pin(size: 43.0, middle: 0.5489),
            Pin(size: 40.0, middle: 0.4333),
            child:
                // Adobe XD layer: 'illustr-removebg-pr…' (shape)
                GestureDetector(
                  onTap: (){
                    user.niveau=1;
                    user.UpdateNiveau();
                    changeScreenReplacement(context, MyopieScreen1());
                  },
                  child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/level.png?alt=media&token=7a0fa9af-94dc-491d-a849-52f88a0ff13b"),
                    fit: BoxFit.fill,
                  ),
              ),
            ),
                ),
          ),
          Pinned.fromPins(
            Pin(size: 42.0, end: 51.0),
            Pin(size: 39.0, start: 62.0),
            child:
                // Adobe XD layer: 'illustr-removebg-pr…' (shape)
                GestureDetector(
                  onTap: (){
                    user.niveau=1;
                    user.UpdateNiveau();
                    changeScreenReplacement(context, DyspraxieScreen3());
                  },
                  child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/level.png?alt=media&token=7a0fa9af-94dc-491d-a849-52f88a0ff13b"),
                    fit: BoxFit.fill,
                  ),
              ),
            ),
                ),
          ),
          Pinned.fromPins(
            Pin(size: 45.0, middle: 0.5175),
            Pin(size: 42.0, middle: 0.2191),
            child:
                // Adobe XD layer: 'illustr-removebg-pr…' (shape)
                GestureDetector(
                  onTap: (){
                    user.niveau=1;
                    user.UpdateNiveau();
                    changeScreenReplacement(context, DysphasieScreen1());
                  },
                  child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/level.png?alt=media&token=7a0fa9af-94dc-491d-a849-52f88a0ff13b"),
                    fit: BoxFit.fill,
                  ),
              ),
            ),
                ),
          ),
          Pinned.fromPins(
            Pin(size: 155.0, middle: 0.1016),
            Pin(size: 51.0, end: 661.0),
            child:
            // Adobe XD layer: 'illustr-removebg-pr…' (shape)
            GestureDetector(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (_) {

                    return AlertDialog(
                      title: Padding(
                        padding: const EdgeInsets.only(left:78.0),
                        child: Text('هل تريد حقا الخروج؟'),
                      ),

                      actions: [
                        RaisedButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('إلغاء'),
                          color: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16.0))),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(right:61.0),
                          child: RaisedButton(
                            onPressed: () async {
                              user.signOut();
                              changeScreenReplacement(context,loginScreen());
                            },
                            child: Text('تَأْكيد'),
                            color: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(16.0))),

                          ),
                        ),
                      ],
                    );
                  },
                );

              },
              child: Container(

                decoration: BoxDecoration(
                  //color: Colors.black45,
                ),child:Row(
                  children: <Widget>[
                    Text("تسجيل خروج",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                  ],
                ),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
