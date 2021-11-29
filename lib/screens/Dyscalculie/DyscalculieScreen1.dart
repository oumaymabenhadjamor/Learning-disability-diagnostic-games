
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/screens/Dyscalculie/DyscalculieScreen4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:provider/provider.dart';

import '../Daltonisme/DaltonismeScreen3.dart';

class DyscalculieScreen1 extends StatefulWidget {
  const DyscalculieScreen1({Key key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<DyscalculieScreen1>
    with TickerProviderStateMixin {
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  initGame(){
    gameOver = false;


    score=0;
    items=[
      ItemModel(name:"8", value:"Coffee"),
      ItemModel(name:"5", value:"dog"),
      ItemModel(name:"4", value:"Cat"),
      ItemModel(name:"0", value: "Cake"),
      ItemModel(name:"2", value:"bus"),
    ];
    items2=[
      ItemModel(name:"8", value:"Coffee"),
      ItemModel(name:"5", value:"dog"),
      ItemModel(name:"4", value:"Cat"),
      ItemModel(name:"0", value: "Cake"),
      ItemModel(name:"2", value:"bus"),


    ];
    // items2 = List<ItemModel>.from(items);
    items.shuffle();

  }
  List<ItemModel> items;
  List<ItemModel>items2;

  int score;
  String name;
  bool gameOver;

  int DyscalculieScore=0 ;
  AudioPlayer audioPlayer=AudioPlayer();
  bool deactived =true;
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
    audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio11.mp3?alt=media&token=d44ca760-aebc-4b55-b2d9-8d2bbbd7f18d');
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
    final user = Provider.of<UserProvider>(context);
if(score==5){
  DyscalculieScore=1;
}else {
  DyscalculieScore=0;
}
//print(DyscalculieScore);
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
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
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Padding(

            padding : const EdgeInsets.only(left:29.3, top:439.5),
            child: Text(
              ' 8    5    4   0    2 ',
              style: TextStyle(
                fontFamily: 'Calibri',
                fontSize: 40,
                //
                color: isPlaying == "false"? Colors.transparent: Color(0xff6e776a),
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: SlideTransition(
                position: offset,
                child:   Text('أَعِدْ تَرْتِيبَ الأَرْقَامِ كما كانت',style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 30,
                  color: const Color(0xff353932),
                  fontWeight: FontWeight.w700,
                ),
                  textAlign: TextAlign.left,
                )

              )

          ),

          Padding(
            padding: const EdgeInsets.only(top:188.0,left: 140),
            child: SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                valueColor:AlwaysStoppedAnimation<Color>(Colors.lime),
                backgroundColor: Colors.grey.shade300,
                value: progress,

                strokeWidth: 8,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Padding(
              padding: const EdgeInsets.only(top:215.0,left: 165),
              child: AnimatedBuilder(
                animation: controller,
                builder: (context, child) => Text(
                  countText,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),



          GestureDetector(
            onTap: (){
              user.niveau=2;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DyscalculieScreen4(),

                  settings: RouteSettings(
                    arguments:DyscalculieScore,
                  ),
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
              user.niveau=2;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DyscalculieScreen4(),

                  settings: RouteSettings(
                    arguments:DyscalculieScore,
                  ),
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
            padding:const EdgeInsets.only(left:275.0, top:485.0),

            child:
            // Adobe XD layer: 'icons8-ligne-pointi…' (shape)
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/ligne2.png?alt=media&token=bf88f13c-f6fe-4d13-8c05-b13f1a268522"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(left:215.0, top:485.0),
            child:
            // Adobe XD layer: 'icons8-ligne-pointi…' (shape)
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/ligne3.png?alt=media&token=36fb1702-6fdb-400a-a573-42e21b00293f"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(left:155.0, top:485.0),
            child:
            // Adobe XD layer: 'icons8-ligne-pointi…' (shape)
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/ligne4.png?alt=media&token=0ddb463e-705b-4b33-b392-33de11993e9a"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(left:95.0, top:485.0),
            child:
            // Adobe XD layer: 'icons8-ligne-pointi…' (shape)
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/ligne5.png?alt=media&token=569730c2-c1bc-42d3-910a-c9f71dc8c12d"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(left:35.0, top:485.0),
            child:
            // Adobe XD layer: 'icons8-ligne-pointi…' (shape)
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/ligne1.png?alt=media&token=9bf7c90a-5eb7-4473-adb7-48c155992bd1"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding :const EdgeInsets.only(right:10.0, top:435.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items2.map((item){
                  return DragTarget<ItemModel>(
                    onAccept: (receivedItem){
   deactived = false;
                      if(item.value== receivedItem.value){
                        setState(() {
                          name=item.name;
                          items.remove(receivedItem);
                           //items2.remove(item);
                          item.coleur=true;

                          item.accepting =false;
                          score++;
                        });

                      }else{
                        setState(() {
                          item.coleur=true;
                          item.name=receivedItem.name;
                          // name=receivedItem.name;
                          items.remove(receivedItem);

                          item.accepting =false;

                        });
                      }
print(score);
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
                      height:55,
                      width: 50,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(5.0),

                      child: Text(item.name, style: TextStyle(color: item.coleur? Colors.black:Colors.transparent, fontSize:40,)),
                    ),


                  );

                }).toList()

            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:329,left: 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: items.map((item) {
                  return Container(

                    margin: const EdgeInsets.all(12.0),
                    child: Draggable<ItemModel>(
                      data: item,
                      childWhenDragging: Text(item.name, style: TextStyle(fontFamily: 'Calibri',color: Colors.black54,fontWeight: FontWeight.w700,fontSize: 40.0,)),
                      feedback: Text(item.name,style: TextStyle(fontFamily: 'Calibri',color: Colors.grey, fontWeight: FontWeight.w700,fontSize: 40,)),
                      child: Text( item.name ,style: TextStyle(fontFamily: 'Calibri',color: isPlaying == "false"?Colors.black54:Colors.transparent, fontWeight: FontWeight.w700,fontSize: 40,)),
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