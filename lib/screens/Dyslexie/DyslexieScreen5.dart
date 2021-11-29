import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/widget/screen_navigation.dart';
import 'package:diag/screens/Dyslexie/DyslexieScreen5-1.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DyslexieScreen5 extends StatefulWidget
{

  @override
  _AudioPlayerLocalAssetState createState() => _AudioPlayerLocalAssetState();
}

class _AudioPlayerLocalAssetState extends State<DyslexieScreen5>  with SingleTickerProviderStateMixin{
  AudioPlayer audioPlayer=AudioPlayer();
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  List<int> optionList =[1,2,3];
  int numOfCorrectAns = 0;
  int totalQuesAsk = 10;
  int correctAns= 1;
  String res = '';
bool deactived = true;
  String selected ='';
  bool modified=false ;

  checkAnswer(int index) {
   deactived = false;
    selected =optionList[index].toString();
    setState(() {
      if (optionList[index] == correctAns) {
        if (modified==false )
        { score++;
        modified=true;}


      } else {
        if (modified==true )
        { score--;
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
          padding: const EdgeInsets.only(top:360,left: 70),
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(3, (index) {
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

                        ), border:Border.all(width: 2.0, color:optionList[index].toString()==selected?Colors.amber:const Color(0xffd2cdcc)),),
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
  AnimationController controller;
  Animation<Offset> offset;
  final double height = 60;
  final double width = 300;
  @override
  void initState() {
    super.initState();
    audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio7.mp3?alt=media&token=d77a63fe-a11b-4d64-b230-9adb67d276fe');
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    offset = Tween<Offset>(begin:  Offset(0.0, -6.0), end:  Offset(0.0, -5.0))
        .animate(controller);


    controller.forward();

  }

int score=0;
  @override
  Widget build(BuildContext context) {
    int DyslexieScore = ModalRoute.of(context).settings.arguments ;
    DyslexieScore=DyslexieScore+score;

    print(DyslexieScore.toString());
    final user = Provider.of<UserProvider>(context);

    return Scaffold(
      backgroundColor: const Color(0xfff1e7d1),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:250,left: 145),
            child: Container(
              width: 70.0,
              height: 70.0,
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
            padding: const EdgeInsets.only(left:160,top: 265),
            child:

            GestureDetector(
              onTap: (){
                audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio8.mp3?alt=media&token=7ee359d3-1d1f-454a-97ef-7ab39495ea1a');

              },
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/haut_parleur.png?alt=media&token=557e20a2-0c37-459e-825c-af7b5cc4b06d"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),


          GestureDetector(
            onTap: (){
              user.niveau=3;
              user.UpdateNiveau();
    if ( deactived == false ) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DyslexieScreen51(),

          settings: RouteSettings(
            arguments: DyslexieScore,
          ),
        ),
      );
    }
            },
            child: Padding(
              padding: const EdgeInsets.only(left:120,top: 533),
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
              user.niveau=3;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DyslexieScreen51(),

                  settings: RouteSettings(
                    arguments:DyslexieScore,
                  ),
                ),
              );}
            },
            child: Padding(
                padding: const EdgeInsets.only(left:137,top: 545),
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
            padding: const EdgeInsets.only(left:245,top: 390),
            child: GestureDetector(
              onTap: (){
                print("hello");
              },
              child: Text(
                'ث',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 50,
                  color: const Color(0xff6e776a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:155,top: 390),
            child: GestureDetector(
              onTap: (){
                print("hello");
              },
              child: Text(
                'ط',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 50,
                  color: const Color(0xff6e776a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:35,top:390),
            child: GestureDetector(
              onTap: (){
                print("hello");
              },
              child: Text(
                'ت ',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 50,
                  color: const Color(0xff6e776a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),

          ), optionalAnswers(),
          Align(
              alignment: Alignment.center,
              child: SlideTransition(
                position: offset,


                child:Text(
                  'أُنقُرْ على الحَرْفِ الذي يُطلَبُ منك ',
                  style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 25,
                    color: const Color(0xff6e776a),
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              )

          ),


        ],
      ),
    );
  }
}
