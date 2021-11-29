import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Daltonisme/DaltonismeScreen3.dart';
import 'MyopieScreen5.dart';

class MyopieScreen3 extends StatefulWidget
{

@override
_AudioPlayerLocalAssetState createState() => _AudioPlayerLocalAssetState();
}

class _AudioPlayerLocalAssetState extends State<MyopieScreen3> with TickerProviderStateMixin{

  AudioPlayer audioPlayer=AudioPlayer();
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  //List<int> optionList =[1,2];
  List<int> optionList = [ 1,5,8,12,65,9,4,40,28,13,78];

  int numOfCorrectAns ;
  int totalQuesAsk = 10;
   int correctAns= 4;

  int score=0;

  AnimationController controllerr;
  Animation<Offset> offset;
  @override
  void initState() {
    super.initState();
    audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myopie2.mp3?alt=media&token=3ca2b78f-9f5a-459c-80b6-18963243ef5e');
    controllerr =
        AnimationController(vsync: this, duration: Duration(seconds: 2));


    offset = Tween<Offset>(begin:  Offset(0.0, -7.0), end:  Offset(0.0, -6.0))
        .animate(controllerr);


    controllerr.forward();
  }

bool deactived =true;
  checkAnswer(int index) {
    deactived = false ;
    setState(() {
      numOfCorrectAns= ModalRoute.of(context).settings.arguments;
      if (optionList[index]  == correctAns) {
      score =1;

      } else {
        score =0;
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
                      padding: const EdgeInsets.only(top: 100,left: 160),
                      child: Container(
                            width: 90.0,
                            height: 90.0,
                               child: Text(
                                  optionList[9].toString(),
                                 style: TextStyle(fontSize: 52),
                                ),
                            ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(0);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 160,left: 240),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[0].toString(),
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(1);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 190,left: 280),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[1].toString(),
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(2);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 240,left: 260),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[2].toString(),
                          style: TextStyle(fontSize: 62),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(10);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 320,left: 210),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[10].toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(6);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 360,left: 140),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[6].toString(),
                          style: TextStyle(fontSize: 32),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(5);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 400,left: 70),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[5].toString(),
                          style: TextStyle(fontSize: 72),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(7);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 500,left: 110),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[7].toString(),
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      checkAnswer(8);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 530,left: 160),
                      child: Container(
                        width: 90.0,
                        height: 90.0,
                        child: Text(
                          optionList[8].toString(),
                          style: TextStyle(fontSize: 42),
                        ),
                      ),
                    ),
                  ),
                ]
                );


  }
  @override
  Widget build(BuildContext context) {
    int MyopieScore = ModalRoute.of(context).settings.arguments ;
    MyopieScore=MyopieScore+score;
    final user = Provider.of<UserProvider>(context);
    print('myopie'+MyopieScore.toString());

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
          Transform.translate(
            offset: Offset(317.0, 454.0),
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

      user.niveau=5;
      user.UpdateNiveau();
      if ( deactived == false ) {
             Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyopieScreen5(),

                  settings: RouteSettings(
                    arguments: MyopieScore ,
                  ),
                ),
              );}
            },
            child: Padding(
              padding: const EdgeInsets.only(left:120,top: 620),
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
                  builder: (context) => MyopieScreen5(),

                  settings: RouteSettings(
                    arguments:MyopieScore ,
                  ),
                ),
              );}
            },
            child: Padding(
                padding: const EdgeInsets.only(left:137,top: 630),
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
            padding: const EdgeInsets.only(left:58.0),
            child: Align(
                alignment: Alignment.center,
                child: SlideTransition(
                    position: offset,
                    child:   Text(': إِبْحَث على الرقم 4ْ ',style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 30,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                    ),
                      textAlign: TextAlign.left,
                    )

                )

            ),
          ),



        ],
      ),
    );
  }
}
