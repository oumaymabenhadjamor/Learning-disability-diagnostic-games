import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/user.dart';
import 'package:diag/screens/Daltonisme/DaltonismeScreen3.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DaltonismeScreen6 extends StatefulWidget
{

  @override
  _AudioPlayerLocalAssetState createState() => _AudioPlayerLocalAssetState();
}

class _AudioPlayerLocalAssetState extends State<DaltonismeScreen6>  with SingleTickerProviderStateMixin{
  AudioPlayer audioPlayer=AudioPlayer();
  String selected ='';
  TextStyle textStyle1 = TextStyle(fontSize: 22);
  List<int> optionList =[1,2,3];
  int score = 0;
 bool deactived =true;
  int correctAns= 2;
  String res = '';
  bool modified=false ;
  @override


  checkAnswer(int index) {
    deactived = false ;
    setState(() {
      selected =optionList[index].toString();

      if (optionList[index] == correctAns) {

        if (modified==false )
        { score++;
        modified=true;}
        res = 'Correct';
        //plyr2.play("audio/success.mp3");
        // print(res);

        // print("correct anser");

      } else {
        if (modified==true )
        { score--;
        modified=false ;
        }
        res = 'Incorrect';
      }
      print(score);

    });
  }
  optionalAnswers() {
    return SizedBox(
        height: 550,
        child: Padding(
          padding: const EdgeInsets.only(top:450,left:70),
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
                          colors:[
                            const Color(0xffffffff),
                            const Color(0xfff6f6f6),
                            const Color(0xff808080)
                          ],
                          stops: [0.0, 0.204, 1.0],
                          //
                        ),
                        border:Border.all(width: 2.0, color:optionList[index].toString()==selected?Colors.amber:const Color(0xffd2cdcc)),),
                      // border: Border.all(width: 2.0, color: selected==true?Colors.amber:const Color(0xffd2cdcc)),),
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
    audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio4.mp3?alt=media&token=3c0a4497-06eb-4195-8799-cf33a6287fa1');
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    offset = Tween<Offset>(begin:  Offset(0.0, -6.0), end:  Offset(0.0, -5.0))
        .animate(controller);


    controller.forward();

  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    int DaltonismeScore = ModalRoute.of(context).settings.arguments ;
    DaltonismeScore=DaltonismeScore+score;
    print('dalto : '+DaltonismeScore.toString());
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
                audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio4.mp3?alt=media&token=3c0a4497-06eb-4195-8799-cf33a6287fa1');

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
          GestureDetector(
            onTap: (){
              user.niveau=5;
              user.UpdateNiveau();
    if ( deactived == false ) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DaltonismeScreen3(),

                  settings: RouteSettings(
                    arguments: DaltonismeScore ,
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
                  builder: (context) => DaltonismeScreen3(),

                  settings: RouteSettings(
                    arguments: DaltonismeScore ,
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
            padding: const EdgeInsets.only(left:250,top: 500),
            child: GestureDetector(
              onTap: (){

              },
              child: Text(
                'مربع',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 25,
                  color: const Color(0xff6e776a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:30,top: 500),
            child: GestureDetector(
              onTap: (){

              },
              child: Text(
                'لا شيء',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 25,
                  color: const Color(0xff6e776a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),

          ), Padding(
            padding: const EdgeInsets.only(left:145,top: 500),
            child: GestureDetector(
              onTap: (){

              },
              child: Text(
                'نجمة',
                style: TextStyle(
                  fontFamily: 'Calibri',
                  fontSize: 25,
                  color: const Color(0xff6e776a),
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.left,
              ),
            ),

          ), optionalAnswers(),
          Padding(
            padding:const EdgeInsets.only(left:65.0, top:193.0),

            child:
            // Adobe XD layer: 'll' (shape)
            Container(
              width: 222.0,
              height: 225.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/image6.png?alt=media&token=43e28a19-39ae-4623-93c3-6a0b9ae699eb"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: SlideTransition(
                position: offset,

                child:Text(
                  'ماهو الشكل الذي تراه؟',
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
          //  ),


        ],
      ),
    );
  }
}
