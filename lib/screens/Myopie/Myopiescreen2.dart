
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/screens/Myopie/MyopieScreen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:provider/provider.dart';

import '../Daltonisme/DaltonismeScreen3.dart';

class MyopieScreen2 extends StatefulWidget {
  const MyopieScreen2({Key key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<MyopieScreen2>
    with TickerProviderStateMixin {
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  initGame() {
    gameOver = false;

    items = [

      ItemModel(name: "10",
          value: "cat",
          image: Image.asset("assets/images/serpent.png")),

    ];
    items2 = [

      ItemModel(name: "10",
          value: "cat",
          image: Image.asset("assets/images/serpent2.png")),


    ];
    // items2 = List<ItemModel>.from(items);
    items.shuffle();
    items7 = [
      ItemModel(name: "12",
          value: "Coffee",
          image: Image.asset("assets/images/serpent3.png")),


    ];
    items8 = [


      ItemModel(name: "12",
          value: "Coffee",
          image: Image.asset("assets/images/serpent4.png")),

    ];

    items7.shuffle();
    items3=[

      ItemModel(name:"11", value:"dog",image: Image.asset("assets/images/serpent5.png")),
    ];
    items4=[

      ItemModel(name:"11", value:"dog",image: Image.asset("assets/images/serpent6.png")),

    ];

    items3.shuffle();

  }
  List<ItemModel> items;
  List<ItemModel>items2;
  List<ItemModel> items7;
  List<ItemModel>items8;
  List<ItemModel> items3;
  List<ItemModel>items4;
bool deactived = true;
  int MScore=0;
  int score=0;
  int score2=0;
  int score3=0;
  int score4=0;
  String name;
  bool gameOver;
  bool test=false ;

  int DyscalScore=0;
  AudioPlayer audioPlayer=AudioPlayer();
  int correctAns= 2;
  String selected ='';
  AnimationController controller;
  String isPlaying="false" ;
  bool modified=false ;
  bool modified4=false ;
  bool modified2=false ;
  bool modified3=false ;
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
    audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio20.mp3?alt=media&token=db3ca83a-f60f-45ae-83e1-bfbaeb634408');
    controllerr =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    offset = Tween<Offset>(begin:  Offset(0.0, -6.0), end:  Offset(0.0, -5.0))
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


  @override
  Widget build(BuildContext context) {
    int MyopieScore = ModalRoute.of(context).settings.arguments ;
    MyopieScore=MyopieScore+MScore;
    final user = Provider.of<UserProvider>(context);
    print('myopie'+MyopieScore.toString());
    DyscalScore=score+score2+score4;
    if (DyscalScore == 3)
    {MScore=1;}
    else {MScore=0;}
    print(MScore);
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
            padding :const EdgeInsets.only(right:100.0, top:140.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items2.map((item){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      if(item.value== receivedItem.value){
  deactived = false;
                        setState(() {
                          if (modified4==false )
                          {  score4++;
                          modified4=true;}
                          item.image=receivedItem.image;

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
                          item.image=receivedItem.image;

                          item.accepting =false;

                        });
                      }

                      print("score4:"+score4.toString());

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
                      height:65,
                      width: 65,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Image( image  :item.image.image),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(left:180.0, top:190.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items8.map((item){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                      if(item.value== receivedItem.value){
   deactived = false ;
                        setState(() {
                          if (modified==false )
                          {  score++;
                          modified=true;}
                          item.image=receivedItem.image;

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
                          item.image=receivedItem.image;

                          item.accepting =false;

                        });
                      }

                      print("score:"+score.toString());

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
                      height:100,
                      width: 100,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Image(  image: item.image.image ),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding :const EdgeInsets.only(right:160.0, top:260.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items4.map((item1){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
     deactived = false ;
                      if(item1.value== receivedItem.value){
                        setState(() {
                          item1.image=receivedItem.image;
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
                          item1.image=receivedItem.image;

                          item1.accepting =false;

                        });
                      }

                      print("score2"+score2.toString());

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
                      height:140,
                      width: 140,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Image(  image: item1.image.image),
                    ),


                  );

                }).toList()

            ),
          ),


          Align(
              alignment: Alignment.center,
              child: SlideTransition(
                  position: offset,
                  child:   Text(' إِرْبِطْ حَسبَ الحَجْمِ',style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 30,
                    color: const Color(0xff353932),
                    fontWeight: FontWeight.w700,
                  ),
                    textAlign: TextAlign.left,
                  )

              )

          ),






          GestureDetector(
            onTap: (){

              user.niveau=4;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyopieScreen3(),

                  settings: RouteSettings(
                    arguments: MyopieScore ,
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

              user.niveau=4;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyopieScreen3(),

                  settings: RouteSettings(
                    arguments:MyopieScore ,
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
            padding: const EdgeInsets.only(top:450,right: 190),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items3.map((item1) {
                  return Container(

                    margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item1,

                      childWhenDragging: Container(decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 3,
                        ),
                        color: Colors.transparent,
                      ),
                          width: 140.0,
                          height: 140.0,child: Image(image: item1.image.image,)),



                      feedback: Container(width: 140.0,
                        height: 140.0,child: Image(image: item1.image.image,)),



                      child: Container(  decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                          width: 3,
                        ),
                        color: Colors.transparent,
                      ),
                          width: 140.0,
                          height: 140.0,child: Image(image: item1.image.image,)),
                    ),
                  );


                }).toList()
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:490,left: 200),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items7.map((item) {
                  return Container(

                    margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 3,
                        ),
                        color: Colors.transparent,
                      ),
                          width: 100.0,
                          height: 100.0,child: Image(image: item.image.image,)),



                      feedback: Container(width: 100.0,
                        height: 100.0,child: Image(image: item.image.image,)),



                      child: Container(  decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                          width: 3,
                        ),
                        color: Colors.transparent,
                      ),
                          width: 100.0,
                          height: 100.0,
                          child: Image(image: item.image.image,)),
                    ),
                  );


                }).toList()
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top:520,left: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items.map((item) {
                  return Container(

                    margin: const EdgeInsets.all(5.0),
                    child: Draggable<ItemModel>(
                      data: item,

                      childWhenDragging: Container(decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 3,
                        ),
                        color: Colors.transparent,
                      ),
                          width: 65.0,
                          height: 65.0,child: Image(image: item.image.image,)),



                      feedback: Container(width: 65.0,
                        height: 65.0 ,child: Image(image: item.image.image,)),



                      child: Container(  decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                          width: 3,
                        ),
                        color: Colors.transparent,
                      ),
                          width: 65.0,
                          height: 65.0,child: Image(image: item.image.image,)),
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
  Image image;
  bool accepting;
  bool coleur;
  ItemModel({this.name, this.value,  this.accepting= false,this.coleur=false,this.image});}