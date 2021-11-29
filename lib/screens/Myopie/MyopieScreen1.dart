import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';

import 'package:diag/screens/Myopie/MyopieScreen4.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Daltonisme/DaltonismeScreen3.dart';

class MyopieScreen1 extends StatefulWidget
{

  @override
  _AudioPlayerLocalAssetState createState() => _AudioPlayerLocalAssetState();
}

class _AudioPlayerLocalAssetState extends State<MyopieScreen1>  with TickerProviderStateMixin {

  AudioPlayer audioPlayer=AudioPlayer();
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  //List<int> optionList =[1,2];
  List<String> optionList = [ 'E','E','E','E','E','E','E','E','E','E','E'];
int MyopieScore=0;
  int numOfCorrectAns ;
  int totalQuesAsk = 10;
  int correctAns= 6;
  String res = '';
  AnimationController controllerr;
  Animation<Offset> offset;
  @override
  void initState() {
    super.initState();
    audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio18.mp3?alt=media&token=6ede28d2-6e76-4c9c-8efb-7cfcea2a89ca');
    controllerr =
        AnimationController(vsync: this, duration: Duration(seconds: 2));


    offset = Tween<Offset>(begin:  Offset(0.0, -6.0), end:  Offset(0.0, -5.0))
        .animate(controllerr);


    controllerr.forward();


  }

 bool deactived = true;

  checkAnswer(int index) {
   deactived = false ;
    setState(() {

      if (index  == correctAns) {
       MyopieScore=1;

      } else {
        MyopieScore=0;

      }
    });
  }
  optionalAnswers() {

    return Stack(

        children: <Widget>[
          GestureDetector(
            onTap: (){
              checkAnswer(9);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 310,left: 280),
              child: Container(
                width: 90.0,
                height: 90.0,

                  child: Text(
                    optionList[9].toString(),
                    style: TextStyle(fontSize:62,color: Colors.indigo.shade300),
                  ),

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(0);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 180,left: 170),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: Text(
                  optionList[0].toString(),
                  style: TextStyle(fontSize: 62,color: Colors.deepOrange.shade300),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(1);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 180,left: 280),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: Text(
                  optionList[1].toString(),
                  style: TextStyle(fontSize: 62,color: Colors.green.shade300),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(2);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 180,left: 60),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: Text(
                  optionList[2].toString(),
                  style: TextStyle(fontSize: 62,color: Colors.purpleAccent.shade400),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(10);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 310,left: 170),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: Text(
                  optionList[10].toString(),
                  style: TextStyle(fontSize: 62,color: Colors.teal.shade300),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(6);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 290,left: 10),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: Text(
                    optionList[6].toString(),
                    style: TextStyle(fontSize: 62,color: Colors.orangeAccent.shade400),
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(5);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 430,left: 60),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: Text(
                  optionList[5].toString(),
                  style: TextStyle(fontSize: 62,color: Colors.blue.shade300),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(7);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 430,left: 170),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: Text(
                  optionList[7].toString(),
                  style: TextStyle(fontSize: 62,color: Colors.brown.shade300),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(8);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 430,left: 280),
              child: Container(
                width: 90.0,
                height: 90.0,
                child: Text(
                  optionList[8].toString(),
                  style: TextStyle(fontSize: 62,color: Colors.lime.shade400),
                ),
              ),
            ),
          ),
        ]
    );


  }
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    print(MyopieScore);
    return Scaffold(
      backgroundColor: const Color(0xfff1e7d1),
      body: Stack(
        children: <Widget>[
          optionalAnswers()
          ,

          Transform.translate(
            offset: Offset(4.0, -48.0),
            child:
            // Adobe XD layer: 'icons8-cloud-100' (shape)
            Container(
              width: 117.0,
              height: 117.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(59.0),
                image: DecorationImage(
                  image:  NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/arriere.png?alt=media&token=01a2f238-7ab6-46e5-ac58-a93d9439de44"),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.4), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-50.0, 131.0),
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
          Transform.translate(
            offset: Offset(296.0, 59.0),
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
          Transform.translate(
            offset: Offset(270.0, 231.0),
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
          Transform.translate(
            offset: Offset(170.0, 325.0),
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




          GestureDetector(
            onTap: (){

              user.niveau=2;
              user.UpdateNiveau();
              if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyopieScreen4(),

                  settings: RouteSettings(
                    arguments: MyopieScore ,
                  ),
                ),
              );}
            },
            child: Padding(
              padding: const EdgeInsets.only(left:120,top: 560),
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
                  builder: (context) => MyopieScreen4(),

                  settings: RouteSettings(
                    arguments:MyopieScore ,
                  ),
                ),
              );}
            },
            child: Padding(
                padding: const EdgeInsets.only(left:137,top: 570),
                child:
                Text("تأكيد الإجابة ",style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),)
            ),
          ),


          Align(
              alignment: Alignment.center,
              child: SlideTransition(
                  position: offset,
                  child:   Text(' إِبْحَثْ عَلَى الشَكْلِ المُخْتَلِفْ  ',style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 30,
                    color: const Color(0xff353932),
                    fontWeight: FontWeight.w700,
                  ),
                    textAlign: TextAlign.left,
                  )

              )

          ),



        ],
      ),
    );
  }
}
