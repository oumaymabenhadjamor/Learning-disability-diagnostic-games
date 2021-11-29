

import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/screens/Daltonisme/DaltonismeScreen3.dart';
import 'package:diag/screens/Daltonisme/DaltonismeScreen5.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../widget/color_options2.dart';
import 'DaltonismeScreen8.dart';

class DaltonismeScreen7 extends StatefulWidget
{

  @override
  _AudioPlayerLocalAssetState createState() => _AudioPlayerLocalAssetState();
}

class _AudioPlayerLocalAssetState extends State<DaltonismeScreen7> with SingleTickerProviderStateMixin {
  bool modified=false ;
  AnimationController controller;
  Animation<Offset> offset;
  final double height = 60;
  final double width = 300;
  int DaltonismeScore = 0;
  bool deactived= true ;
  AudioPlayer audioPlayer=AudioPlayer();
  @override
  void initState() {
    super.initState();

    audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio5.mp3?alt=media&token=fdd27146-143b-4feb-85bb-9d49227c901d');
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    offset = Tween<Offset>(begin:  Offset(0.0, -6.0), end:  Offset(0.0, -5.0))
        .animate(controller);


    controller.forward();

  }
  Random random = Random();

  int randomR;
  int randomG;
  int randomB;



  void answerChooseHandler(int r, int g, int b) {
    deactived=false ;
    if(r == randomR && g == randomG && b == randomB) {

      setState(() {
        if (modified==false )
        { DaltonismeScore++;
        modified=true;}


      });
    }else {

      setState(() {
        if (modified==true )
        { DaltonismeScore--;
        modified=false ;
        }

      });
    }
    print(DaltonismeScore);
  }

  void resetHanlder() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    randomR = 207;
    randomG = 71;
    randomB = 71;

    return Scaffold(
        backgroundColor: const Color(0xfff1e7d1),
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:50,left: 15),
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                  gradient: RadialGradient(
                    center: Alignment(-0.42, -0.49),
                    radius: 0.98,
                    colors: [
                      const Color(0xffffffff),
                      const Color(0xfffff3e0),
                      const Color(0xffffe0b2),
                      const Color(0xffffcc80),
                      const Color(0xffffb74d),
                      const Color(0xffffa726),
                      const Color(0xffff9800),
                      const Color(0xfffb8c00)
                    ],
                    stops: [0.0, 0.067, 0.167, 0.412, 0.462, 0.552, 0.703, 1.0],

                  ),
                  border: Border.all(width: 1.0, color: const Color(0xffd2cdcd)),
                ),
              ),
            ),

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
              padding: const EdgeInsets.only(left:20,top: 55),
              child:

              GestureDetector(
                onTap: (){
                  audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio5.mp3?alt=media&token=fdd27146-143b-4feb-85bb-9d49227c901d');

                },
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/haut_parleur.png?alt=media&token=557e20a2-0c37-459e-825c-af7b5cc4b06d"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:178.0),
              child: ColorOptions2(randomR, randomG, randomB, answerChooseHandler),
            ),
            Align(
                alignment: Alignment.center,
                child: SlideTransition(
                  position: offset,

                  child:Text(
                    'انقر فوق المربع المختلف',
                    style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 30,
                      color: const Color(0xff6e776a),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )

            ),
            GestureDetector(
              onTap: (){
                user.niveau=2;
                user.UpdateNiveau();
                if(deactived==false){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DaltonismeScreen5(),

                    settings: RouteSettings(
                      arguments: DaltonismeScore ,
                    ),
                  ),
                );}
              },
              child: Padding(
                padding: const EdgeInsets.only(left:120,top: 543),
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
    if(deactived==false){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DaltonismeScreen5(),

                    settings: RouteSettings(
                      arguments: DaltonismeScore ,
                    ),
                  ),
                );}
              },
              child: Padding(
                  padding: const EdgeInsets.only(left:137,top: 555),
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
        )
    );
  }
}
