import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/Test.dart';
import 'package:diag/providers/user.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Map.dart';
import '../Daltonisme/DaltonismeScreen3.dart';

class MyopieScreen6 extends StatefulWidget
{

  @override
  _AudioPlayerLocalAssetState createState() => _AudioPlayerLocalAssetState();
}

class _AudioPlayerLocalAssetState extends State<MyopieScreen6> with TickerProviderStateMixin{

  AudioPlayer audioPlayer=AudioPlayer();
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  //List<int> optionList =[1,2];
  List<Image> optionList = [ Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop1.png?alt=media&token=355ee824-48a5-4b74-a2cf-1c12796ecd2f"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop2.png?alt=media&token=cad74c16-57c6-4f15-b886-abc7b9e52f26"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop3.png?alt=media&token=b7d87009-a36f-4fa5-b3b9-db819baf3d6b"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop4.png?alt=media&token=5281d748-1fc0-48b9-b011-e603ff37c552"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop5.png?alt=media&token=cb5e888b-ac87-4545-900f-e1f2cd05fd5d"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop1.png?alt=media&token=355ee824-48a5-4b74-a2cf-1c12796ecd2f"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop5.png?alt=media&token=cb5e888b-ac87-4545-900f-e1f2cd05fd5d"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop3.png?alt=media&token=b7d87009-a36f-4fa5-b3b9-db819baf3d6b"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop4.png?alt=media&token=5281d748-1fc0-48b9-b011-e603ff37c552"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop5.png?alt=media&token=cb5e888b-ac87-4545-900f-e1f2cd05fd5d"),),Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop3.png?alt=media&token=b7d87009-a36f-4fa5-b3b9-db819baf3d6b"),)];


 int correctAns= 1;

  int score=0;
  int scoreM=0;
bool check=false ;
bool deactived =true;
  AnimationController controllerr;
  Animation<Offset> offset;
  @override
  void initState() {
    super.initState();
    audioPlayer.play ('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio22.mp3?alt=media&token=7e13f973-94d2-4cbe-ab9f-7eca4d7eb7b3');
    controllerr =
        AnimationController(vsync: this, duration: Duration(seconds: 2));


    offset = Tween<Offset>(begin:  Offset(0.0, -7.0), end:  Offset(0.0, -6.0))
        .animate(controllerr);


    controllerr.forward();
  }


  checkAnswer(int index) {
  deactived = false;
    setState(() {
check=true;
print("index"+index.toString());
      if (index  == correctAns ) {

        score ++;
        print(score);
      } else {
print("false");
      }
    });
    if (score==4){scoreM=1;}else {scoreM=0;}
  }
  optionalAnswers() {

    return Stack(

        children: <Widget>[
          GestureDetector(
            onTap: (){
              checkAnswer(6);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 200,left: 25),
              child: Container(
                width: 80.0,
                height: 80.0,
                child:  Image(image:
                optionList[6].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(5);
            },

            child: Padding(
              padding: const EdgeInsets.only(top: 200,left: 260),
              child: Container(

                width: 80.0,
                height: 80.0,
                child:
                Image(image:
                optionList[5].image,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(1);
            },

            child: Padding(
              padding: const EdgeInsets.only(top: 200,left: 180),
              child: Container(

                width: 80.0,
                height: 80.0,
                child:  Image(image:
                optionList[1].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(2);
            },

            child: Padding(
              padding: const EdgeInsets.only(top: 200,left: 100),
              child: Container(
                width: 80.0,
                height: 80.0,
                child:  Image(image:
                optionList[2].image


                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(10);
            },

              child: Padding(
                padding: const EdgeInsets.only(top: 300,left: 60),
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  child:  Image(image:
                  optionList[10].image


                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(6);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 300,left: 130),
              child: Container(
                width: 60.0,
                height: 60.0,
                child:  Image(image:
                optionList[6].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(1);
            },

              child: Padding(
                padding: const EdgeInsets.only(top: 300,left: 200),
                child: Container(

                  width: 60.0,
                  height:60.0,
                  child:  Image(image:
                  optionList[1].image

                  ),

              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(0);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 300,left: 270),
              child: Container(
                width: 60.0,
                height: 60.0,
                child:  Image(image:
                optionList[0].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(5);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 380,left: 150),
              child: Container(
                width: 40.0,
                height: 40.0,
                child:  Image(image:
                optionList[5].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(10);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 380,left: 240),
              child: Container(
                width: 40.0,
                height: 40.0,
                child:  Image(image:
                optionList[10].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(3);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 380,left: 195),
              child: Container(
                width: 40.0,
                height: 40.0,
                child:  Image(image:
                optionList[3].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(1);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 380,left: 100),
              child: Container(
                width: 40.0,
                height: 40.0,
                child:  Image(image:
                optionList[1].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(6);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 440,left: 130),
              child: Container(
                width: 30.0,
                height: 30.0,
                child:  Image(image:
                optionList[6].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(7);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 440,left: 165),
              child: Container(
                width: 30.0,
                height: 30.0,
                child:  Image(image:
                optionList[7].image

                ),
              ),
            ),

          ),
          GestureDetector(
            onTap: (){
              checkAnswer(8);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 440,left: 200),
              child: Container(
                width: 30.0,
                height: 30.0,
                child:  Image(image:
                optionList[8].image

                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              checkAnswer(1);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 440,left: 235),
              child: Container(
                width: 30.0,
                height: 30.0,
                child:  Image(image:
                optionList[1].image

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
   MyopieScore=MyopieScore+scoreM;
  final user = Provider.of<UserProvider>(context);
    print('myopie'+MyopieScore.toString());
  final test = Provider.of<TestProvider>(context);
    return Scaffold(
      backgroundColor: const Color(0xfff1e7d1),
      body: Stack(
        children: <Widget>[


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
          optionalAnswers()
          ,
          GestureDetector(
          onTap: (){

            user.niveau=0;
            user.UpdateNiveau();
            test.maladie="myopie";
            test.scoreMyopie= MyopieScore;
            test.classId=test.eleves.first.classId.toString();
            test.enseignantId=test.enseigants.first.enseignantId.toString();
            test.etat="desactivé";


            test.createTestMyop();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapScreen(),


                ),
              );}
            },
            child: Padding(
              padding: const EdgeInsets.only(left:120,top: 550),
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
       test.maladie="myopie";
       test.scoreMyopie= MyopieScore;
       test.classId=test.eleves.first.classId.toString();
       test.enseignantId=test.enseigants.first.enseignantId.toString();
       test.etat="desactivé";
       test.createTestMyop();
    if ( deactived == false ) {
       Navigator.push(
                context,
               MaterialPageRoute(
                  builder: (context) => MapScreen(),


                ),
              );}
            },
            child: Padding(
                padding: const EdgeInsets.only(left:137,top: 560),
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
            padding: const EdgeInsets.only(left:75.0),
            child: Align(
                alignment: Alignment.center,
                child: SlideTransition(
                    position: offset,
                    child:   Text(' :إِبْحَث على هذا الشكل ',style: TextStyle(
                      fontFamily: 'Calibri',
                      fontSize: 25,
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                    ),
                      textAlign: TextAlign.left,
                    )

                )

            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:90.0,top: 90),

                    child:   Container(width:40,height:40,child: Image(image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/myop2.png?alt=media&token=cad74c16-57c6-4f15-b886-abc7b9e52f26"),))


          ),



        ],
      ),
    );
  }
}
