
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/Test.dart';
import 'package:diag/providers/user.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:provider/provider.dart';

import '../Map.dart';


class DyslexieScreen52 extends StatefulWidget {
  const DyslexieScreen52({Key key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<DyslexieScreen52>
    with TickerProviderStateMixin {
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  initGame(){
    gameOver = false;
    score=0;
    items=[
      ItemModel(name:"ض", value:"Coffee"),
      ItemModel(name:"ظ", value:"dog"),
      ItemModel(name:"ذ", value:"Cat"),

    ];
    items2=[
      ItemModel(name:"ض", value:"Coffee"),



    ];
    // items2 = List<ItemModel>.from(items);
    items.shuffle();

  }
  List<ItemModel> items;
  List<ItemModel>items2;
bool deactived = true;
  int score;
  String name;
  bool gameOver;
  bool test=false ;
  AudioPlayer audioPlayer=AudioPlayer();
  int correctAns= 2;
  String selected ='';
  AnimationController controller;
  String isPlaying="false" ;
  bool modified=false ;
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
    audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio15.mp3?alt=media&token=6e0aae27-c00c-43ab-aa0a-420b66b985b9');
    controllerr =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    offset = Tween<Offset>(begin:  Offset(0.0, -7.0), end:  Offset(0.0, -6.0))
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
    final testt = Provider.of<TestProvider>(context);
    int DyslexieScore = ModalRoute.of(context).settings.arguments ;
    DyslexieScore=DyslexieScore+score;
    final user = Provider.of<UserProvider>(context);
    print(DyslexieScore.toString());

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
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:0,top: 580),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(61.0),
                image: DecorationImage(
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.rotate(
            angle: 0.3,
            child: Padding(
              padding: const EdgeInsets.only(left:258.0,top:325),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.lime.shade700,
                    width: 3,
                  ),
                  color: Colors.transparent,
                ),
                width: 65.0,
                height: 65.0,
                child: Text(test==false ?"?":"", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.normal,color: Colors.lime.shade700,fontSize: 45,),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:98.0,top:335),
            child:
               Text("فدع", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black45,fontSize: 55,),),
            )
         ,
          Padding(
            padding :const EdgeInsets.only(left:110.0, top:345.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items2.map((item){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
                       deactived = false;
                      if(item.value== receivedItem.value){
                        setState(() {
                          if (modified==false )
                          {   score++;
                          modified=true;}
                          item.name=receivedItem.name;

                          item.coleur=true;
                          test=true;
                          item.accepting =false;

                        });

                      }else{
                        setState(() {
                          if (modified==true )
                          { score--;
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
                      height:70,
                      width: 70,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item.name,textAlign: TextAlign.center, style: TextStyle(color: item.coleur? Colors.lime.shade700:Colors.transparent, fontSize:45,)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:125,top: 160),
            child:
            // Adobe XD layer: 'pngegg' (shape)
            Container(
              width: 109.0,
              height: 141.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/grenouille%20.png?alt=media&token=80fee446-8fa7-41a8-b49a-e1981f28c0a6"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: SlideTransition(
                  position: offset,
                  child:   Text('أَكْمِلْ بالحرف المناسب',style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 25,
                    color: const Color(0xff353932),
                    fontWeight: FontWeight.w700,
                  ),
                    textAlign: TextAlign.left,
                  )

              )

          ),






          GestureDetector(
            onTap: (){
              user.niveau=0;
              user.UpdateNiveau();
              testt.maladie="";
              testt.scoreDyslexie= DyslexieScore;
              testt.classId=testt.eleves.first.classId.toString();
              testt.enseignantId=testt.enseigants.first.enseignantId.toString();
              testt.etat="desactivé";
              testt.createTestDyslexie();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(),



                ),
              );}
            },
            child: Padding(
              padding: const EdgeInsets.only(left:120,top: 603),
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
              user.niveau=0;
              user.UpdateNiveau();
              testt.maladie="";
              testt.scoreDyslexie= DyslexieScore;
              testt.classId=testt.eleves.first.classId.toString();
              testt.enseignantId=testt.enseigants.first.enseignantId.toString();
              testt.etat="desactivé";
              testt.createTestDyslexie();
    if ( deactived == false ) {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(),


                ),
              );}
            },
            child: Padding(
                padding: const EdgeInsets.only(left:137,top: 615),
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
            padding: const EdgeInsets.only(top:469,left: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items.map((item) {
                  return Container(

                    margin: const EdgeInsets.all(12.0),
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
                          height: 65.0,child: Text(item.name, textAlign: TextAlign.center, style:TextStyle(fontFamily: 'Calibri',color: Colors.grey,fontWeight: FontWeight.w700,fontSize: 45.0,))),



                      feedback: Text(item.name,style: TextStyle(fontFamily: 'Calibri',color: Colors.grey, fontWeight: FontWeight.w700,fontSize: 45,)),



                      child: Container(  decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black54,
                          width: 3,
                        ),
                        color: Colors.transparent,
                      ),
                          width: 65.0,
                          height: 65.0,child: Text( item.name ,textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Calibri',color:Colors.black54, fontWeight: FontWeight.w700,fontSize: 45,))),
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