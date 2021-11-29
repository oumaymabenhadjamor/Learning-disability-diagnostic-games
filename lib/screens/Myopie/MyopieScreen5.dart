
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/Test.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/screens/Myopie/MyopieScreen6.dart';
import 'package:diag/screens/Myopie/Myopiescreen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:provider/provider.dart';

import '../Daltonisme/DaltonismeScreen3.dart';

class MyopieScreen5 extends StatefulWidget {
  const MyopieScreen5({Key key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<MyopieScreen5>
    with TickerProviderStateMixin {
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  initGame() {
    gameOver = false;

    items = [

      ItemModel(name: "D",
        value: "cat",
      ),

    ];
    items2 = [

      ItemModel(name: "D",
        value: "cat",
      ),


    ];
    // items2 = List<ItemModel>.from(items);
    items.shuffle();
    items7 = [
      ItemModel(name: "A",
        value: "Coffee",
      ),


    ];
    items8 = [


      ItemModel(name: "A",
        value: "Coffee",
      ),

    ];

    items7.shuffle();
    items3=[

      ItemModel(name:"O", value:"dog"),
    ];
    items4=[

      ItemModel(name:"O", value:"dog"),

    ];
    items5=[

      ItemModel(name:"B", value:"e"),
    ];
    items6=[

      ItemModel(name:"B", value:"e"),

    ];
    items9=[

      ItemModel(name:"N", value:"t"),
    ];
    items10=[

      ItemModel(name:"N", value:"t"),

    ];
    items11=[

      ItemModel(name:"Y", value:"C"),
    ];
    items12=[

      ItemModel(name:"Y", value:"C"),

    ];
    items13=[

      ItemModel(name:"U", value:"K"),
    ];
    items14=[

      ItemModel(name:"U", value:"K"),

    ];
    items15=[

      ItemModel(name:"Z", value:"z"),
    ];
    items16=[

      ItemModel(name:"Z", value:"z"),

    ];
    items3.shuffle();

  }
  List<ItemModel> items;
  List<ItemModel>items2;
  List<ItemModel> items7;
  List<ItemModel>items8;
  List<ItemModel> items3;
  List<ItemModel>items4;
  List<ItemModel> items5;
  List<ItemModel>items6;
  List<ItemModel> items9;
  List<ItemModel>items10;
  List<ItemModel> items11;
  List<ItemModel>items12;
  List<ItemModel> items13;
  List<ItemModel>items14;
  List<ItemModel> items15;
  List<ItemModel>items16;

  int score=0;
  int score2=0;
  int score12=0;
  int score14=0;
  int score4=0;
  int score6=0;
  int score10=0;
  int score16=0;
  String name;
  bool gameOver;
  bool test=false ;

  int MScore=0;
  AudioPlayer audioPlayer=AudioPlayer();
  int correctAns= 2;
  String selected ='';
  AnimationController controller;
  String isPlaying="false" ;
  bool modified=false ;
  bool modified10=false ;
  bool modified4=false ;
  bool modified2=false ;
  bool modified12=false ;
  bool modified14=false ;
  bool modified6=false ;
  bool modified16=false ;
 bool deactived =true;
  int DyscalScore=0;
  String get countText {
    Duration count = controller.duration * controller.value;
    return controller.isDismissed
        ? '${(controller.duration.inSeconds % 60).toString().padLeft(2, '0')}'
        : '${(count.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  double progress = 1.0;

  void notify() {
    if (countText == '00') {
      FlutterRingtonePlayer.playNotification();
    }
  }
  AnimationController controllerr;
  Animation<Offset> offset;
  final double height = 60;
  final double width = 300;
  @override
  void initState() {
    super.initState();
    initGame();
    audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio21.mp3?alt=media&token=2964689b-425b-4335-8438-75f341dbfeb4');
    controllerr =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    offset = Tween<Offset>(begin:  Offset(0.0, -8.0), end:  Offset(0.0, -7.0))
        .animate(controllerr);


    controllerr.forward();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),

    );
    controller.reverse(
        from: controller.value == 0 ? 1.0 : controller.value);
    setState(() {
      isPlaying = "true";

    });
    controller.addListener(() {
      notify();
      if (controller.isAnimating) {
        setState(() {
          progress = controller.value;
        });
      } else {
        setState(() {
          progress = 1.0;
          isPlaying = "false";
        });
      }
    });

  }

int myopScore=0;
  @override
  Widget build(BuildContext context) {
    final testt = Provider.of<TestProvider>(context);
    final user = Provider.of<UserProvider>(context);
    testt.loadDetailsUser();
    testt.loadEnseignantByUser(id:testt.eleves.first.classId);
    int MyopieScore = ModalRoute.of(context).settings.arguments ;
    //MyopieScore=MyopieScore+MScore;

    print('myopie'+MyopieScore.toString());
    DyscalScore=score+score2+score4+score10+score12+score14+score6;
    print(DyscalScore);
    if (DyscalScore == 7)
    {print ("1 :"+myopScore.toString());
    myopScore = MyopieScore+1;
    print ("2: "+myopScore.toString());
    }
    else { myopScore=MyopieScore+0;}
    print(myopScore);
    if(items.length == 0)
      gameOver = true;
    return Scaffold(
      backgroundColor: const Color(0xfff1e7d1),
      body:  Stack(
        children: [

          Padding(
            padding: const EdgeInsets.only(left:260,top: 650),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:240,top: 20),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:240,top: 200),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:240,top: 350),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:190.0,left: 30),
            child: Container(  decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.deepOrange.shade400,
                width: 3,
              ),
              color: Colors.transparent,
            ),
                width: 310.0,
                height: 255.0),
          ),
          Padding(
            padding: const EdgeInsets.only(left:60,top: 450),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:0,top: 300),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:0,top: 0),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),

          Padding(
            padding :const EdgeInsets.only(left:10.0, top:350.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items2.map((item){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
     deactived = false ;
                      if(item.value== receivedItem.value){
                        setState(() {
                          if (modified4==false )
                          {  score4++;
                          modified4=true;}
                          item.name=receivedItem.name;

                          item.coleur=true;
                          test=true;
                          item.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified4==true )
                          {score4--;
                          modified4=false ;
                          }
                          test=true ;
                          item.coleur=true;
                          item.name=receivedItem.name;

                          item.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item.accepting? Colors.transparent:Colors.transparent,
                      height:20,
                      width: 20,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item.name,style: TextStyle( fontSize: 20,color:item.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(right:100.0, top:290.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items8.map((item){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      deactived = false ;
                      if(item.value== receivedItem.value){
                        setState(() {
                          if (modified==false )
                          {  score++;
                          modified=true;}
                          item.name=receivedItem.name;

                          item.coleur=true;
                          test=true;
                          item.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified==true )
                          {score--;
                          modified=false ;
                          }
                          test=true ;
                          item.coleur=true;
                          item.name=receivedItem.name;

                          item.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item.accepting? Colors.transparent:Colors.transparent,
                      height:30,
                      width: 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(2.0),

                      child: Text(item.name,style: TextStyle( fontSize: 30,color:item.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(left:120.0, top:290.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items4.map((item1){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      deactived = false ;
                      if(item1.value== receivedItem.value){
                        setState(() {
                          item1.name=receivedItem.name;
                          if (modified2==false )
                          {  score2++;
                          modified2=true;}
                          item1.coleur=true;
                          test=true;
                          item1.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified2==true )
                          {score2--;
                          modified2=false ;
                          }

                          test=true ;
                          item1.coleur=true;
                          item1.name =receivedItem.name;

                          item1.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item1.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item1.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item1.accepting? Colors.transparent:Colors.transparent,
                      height:30,
                      width: 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item1.name,style: TextStyle( fontSize: 30,color:item1.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(right:180.0, top:225.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items12.map((item1){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      deactived = false ;
                      if(item1.value== receivedItem.value){
                        setState(() {
                          item1.name=receivedItem.name;
                          if (modified12==false )
                          {  score12++;
                          modified12=true;}
                          item1.coleur=true;
                          test=true;
                          item1.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified12==true )
                          {score12--;
                          modified12=false ;
                          }

                          test=true ;
                          item1.coleur=true;
                          item1.name =receivedItem.name;

                          item1.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item1.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item1.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item1.accepting? Colors.transparent:Colors.transparent,
                      height:45,
                      width: 45,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item1.name,style: TextStyle( fontSize: 40,color:item1.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(left:10.0, top:290.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items16.map((item1){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      deactived = false ;
                      if(item1.value== receivedItem.value){
                        setState(() {
                          item1.name=receivedItem.name;
                          if (modified16==false )
                          {  score16++;
                          modified16=true;}
                          item1.coleur=true;
                          test=true;
                          item1.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified16==true )
                          {score16--;
                          modified16=false ;
                          }

                          test=true ;
                          item1.coleur=true;
                          item1.name =receivedItem.name;

                          item1.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item1.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item1.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item1.accepting? Colors.transparent:Colors.transparent,
                      height:30,
                      width: 30,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(2.0),

                      child: Text(item1.name,style: TextStyle( fontSize: 30,color:item1.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(left:210.0, top:225.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items10.map((item1){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      deactived = false ;
                      if(item1.value== receivedItem.value){
                        setState(() {
                          item1.name=receivedItem.name;
                          if (modified10==false )
                          {  score10++;
                          modified10=true;}
                          item1.coleur=true;
                          test=true;
                          item1.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified10==true )
                          {score10--;
                          modified10=false ;
                          }

                          test=true ;
                          item1.coleur=true;
                          item1.name =receivedItem.name;

                          item1.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item1.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item1.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item1.accepting? Colors.transparent:Colors.transparent,
                      height:45,
                      width: 45,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item1.name,style: TextStyle( fontSize: 40,color:item1.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(left:80.0, top:225.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items14.map((item1){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      deactived = false ;
                      if(item1.value== receivedItem.value){
                        setState(() {
                          item1.name=receivedItem.name;
                          if (modified14==false )
                          {  score14++;
                          modified14=true;}
                          item1.coleur=true;
                          test=true;
                          item1.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified14==true )
                          {score14--;
                          modified14=false ;
                          }

                          test=true ;
                          item1.coleur=true;
                          item1.name =receivedItem.name;

                          item1.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item1.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item1.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item1.accepting? Colors.transparent:Colors.transparent,
                      height:45,
                      width: 45,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item1.name,style: TextStyle( fontSize: 40,color:item1.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(right:50.0, top:225.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items6.map((item1){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      deactived = false ;
                      if(item1.value== receivedItem.value){
                        setState(() {
                          item1.name=receivedItem.name;
                          if (modified6==false )
                          {  score6++;
                          modified6=true;}
                          item1.coleur=true;
                          test=true;
                          item1.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified6==true )
                          {score6--;
                          modified6=false ;
                          }

                          test=true ;
                          item1.coleur=true;
                          item1.name =receivedItem.name;

                          item1.accepting =false;

                        });
                      }



                    },
                    onLeave: (receivedItem){
                      setState(() {
                        item1.accepting=false;
                      });
                    },
                    onWillAccept: (receivedItem){
                      setState(() {
                        item1.accepting=true;
                      });
                      return true;
                    },
                    builder: (context, acceptedItems,rejectedItem) => Container(
                      color: item1.accepting? Colors.transparent:Colors.transparent,
                      height:45,
                      width: 45,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item1.name,style: TextStyle( fontSize: 40,color:item1.coleur? Colors.orangeAccent:Colors.black)),
                    ),


                  );

                }).toList()

            ),
          ),
          Align(
              alignment: Alignment.center,
              child: SlideTransition(
                  position: offset,
                  child:   Text(': حَدِدْ الأَشْكَالَ بِرَبْطِ كل شَكْلٍ بما يَتَطَابَقُ معه  ِ',style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 20,
                    color: const Color(0xff353932),
                    fontWeight: FontWeight.w700,
                  ),
                    textAlign: TextAlign.left,
                  )

              )

          ),






          GestureDetector(
            onTap: (){

              user.niveau=6;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyopieScreen6(),

                  settings: RouteSettings(
                    arguments: myopScore ,
                  ),
                ),
              );}
            },
            child: Padding(
              padding: const EdgeInsets.only(left:120,top: 613),
              child: Container(
                width: 120.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(2222.0, 2222.0)),
                  color: const Color(0xffee9d3c),
                  border: Border.all(width: 1.0, color: const Color(0xffee9d3c)),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){

              user.niveau=6;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyopieScreen6(),

                  settings: RouteSettings(
                    arguments:myopScore,
                  ),
                ),
              );}
            },
            child: Padding(
                padding: const EdgeInsets.only(left:137,top: 625),
                child:
                Text("تأكيد الإجابة ",style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),)
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:500,right: 250),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items3.map((item1) {
                  return Container(

                    // margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item1,

                      childWhenDragging: Container(
                          width: 65.0,
                          height: 65.0,child: Text(item1.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 65.0,
                          height:65.0,child: Text(item1.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 65.0,
                          height: 65.0,child: Text(item1.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:500,left: 305),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items7.map((item) {
                  return Container(

                    //  margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 45.0,
                          height: 45.0,
                          child: Text(item.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:500,right: 175),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items.map((item) {
                  return Container(

                    //    margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(
                          width: 50.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 45.0,
                          height: 45.0 ,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:500,right: 90),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items9.map((item) {
                  return Container(

                    //  margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 45.0,
                          height: 45.0 ,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),


          Padding(
            padding: const EdgeInsets.only(top:500,left: 235),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items5.map((item) {
                  return Container(

                    //   margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 45.0,
                          height: 45.0 ,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:500,left: 170),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items15.map((item) {
                  return Container(

                    //   margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 45.0,
                          height: 45.0 ,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:500,left: 95),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items13.map((item) {
                  return Container(

                    //  margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(

                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 45.0,
                          height: 45.0 ,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:500,left: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items11.map((item) {
                  return Container(

                    //   margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      feedback: Container(width: 45.0,
                          height: 45.0 ,child: Text(item.name,style: TextStyle( fontSize: 35),)),



                      child: Container(
                          width: 45.0,
                          height: 45.0,child: Text(item.name,style: TextStyle( fontSize: 35),)),
                    ),
                  );


                }).toList()
            ),
          ),


        ],
      ),

    );
  }
}
class ItemModel {
  String name;
  final String value;

  bool accepting;
  bool coleur;
  ItemModel({this.name, this.value,  this.accepting= false,this.coleur=false});}