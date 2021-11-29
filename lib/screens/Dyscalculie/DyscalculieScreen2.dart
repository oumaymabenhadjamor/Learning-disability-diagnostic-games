
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/screens/Dyscalculie/DyscalculieScreen6.dart';
import 'package:diag/screens/Dyslexie/DyslexieScreen5-2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:provider/provider.dart';

import '../Daltonisme/DaltonismeScreen3.dart';

class DyscalculieScreen2 extends StatefulWidget {
  const DyscalculieScreen2({Key key}) : super(key: key);

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<DyscalculieScreen2>
    with TickerProviderStateMixin {
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  List<int> optionList =[1,2];
  int score=0 ;
 bool deactived =true;
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
   audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio9.mp3?alt=media&token=870aab9d-3fd0-425d-86fe-64270c1eab81');
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
  checkAnswer(int index) {
   deactived = false ;
    selected =optionList[index].toString();
    setState(() {
     // numOfCorrectAns= ModalRoute.of(context).settings.arguments;
      if (optionList[index] == correctAns) {
        if (modified == false )
        { score++;
        modified=true;}
      } else {
        if (modified==true )
        {   score--;
        modified=false ;
        }

      }
      print(score);
    });
  }
  optionalAnswers() {
    return SizedBox(
        height: 550,
        child: Padding(
          padding: const EdgeInsets.only(top:440,left: 75),
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(2, (index) {
              return Center(
                child: GestureDetector(
                  onTap: () {
                    // print(optionList[index].toString());
                    checkAnswer(index);
                  },
                  child: Container(
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        gradient: RadialGradient(
                          center: Alignment(-0.42, -0.49),
                          radius: 0.98,
                          colors: [
                            const Color(0xffffffff),
                            const Color(0xfff6f6f6),
                            const Color(0xff808080)
                          ],
                          stops: [0.0, 0.204, 1.0],

                        ), border: Border.all(width: 2.0, color:optionList[index].toString()==selected?Colors.amber:const Color(0xffd2cdcc)),),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 25, bottom: 25, left: 25, right: 25),
                        child: Text(
                          optionList[index].toString(),
                          style: textStyle1,
                        ),
                      )),
                ),
              );
            }),
          ),
        ));
  }



  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    int DyscalculieScore = ModalRoute.of(context).settings.arguments ;

    DyscalculieScore=DyscalculieScore+score;
    print(DyscalculieScore);
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
                  padding: const EdgeInsets.only(left:0,top: 580),
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
                Align(
                    alignment: Alignment.center,
                    child: SlideTransition(
                      position: offset,
                      child:  isPlaying == "false"
                          ? Text('هل رأيت حرف ر؟',style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 30,
                        color: const Color(0xff353932),
                        fontWeight: FontWeight.w700,
                      ),
                        textAlign: TextAlign.left,
                      )
                          : Text('تذكر الحروف',style: TextStyle(
                        fontFamily: 'Calibri',
                        fontSize: 30,
                        color: const Color(0xff353932),
                        fontWeight: FontWeight.w700,
                      ),
                        textAlign: TextAlign.left,
                      ),
                    )

                ),

                Padding(
                  padding: const EdgeInsets.only(top:278.0,left: 90),
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: CircularProgressIndicator(
                      valueColor:AlwaysStoppedAnimation<Color>(Colors.amber),
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
                    padding: const EdgeInsets.only(top:328.0,left: 140),
                    child: AnimatedBuilder(
                      animation: controller,
                      builder: (context, child) => Text(
                        countText,
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(

                  padding : const EdgeInsets.only(left:60.3, top:169.5),
                  child: Text(
                    ' س ل ب ر م',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 50,

                      color: isPlaying == "false"
                          ? Colors.transparent
                          : Color(0xff6e776a),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:210,top: 505),
                  child: Text(
                    'نعم',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 40,
                      color: const Color(0xff6e776a),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:90,top: 505),
                  child: Text(
                    'لا',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 40,
                      color: const Color(0xff6e776a),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                optionalAnswers(),
                GestureDetector(
                  onTap: (){
                    user.niveau=5;
                    user.UpdateNiveau();
    if ( deactived == false ) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DyscalculieScreen6(),

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
                    user.niveau=5;
                    user.UpdateNiveau();
    if ( deactived == false ) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DyscalculieScreen6(),

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


              ],
            ),

    );
  }
}