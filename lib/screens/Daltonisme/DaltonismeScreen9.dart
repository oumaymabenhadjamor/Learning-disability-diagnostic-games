import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:diag/providers/Test.dart';
import 'package:diag/providers/user.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Map.dart';


class DaltonismeScreen9 extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<DaltonismeScreen9> with SingleTickerProviderStateMixin {

  bool modified=false ;
  AnimationController controller;
  Animation<Offset> offset;
  final double height = 60;
  final double width = 300;
  final FirebaseAuth _auth = FirebaseAuth.instance;
bool deactived = true;
  AudioPlayer audioPlayer=AudioPlayer();
  @override
  void initState() {
    super.initState();
    initGame();
    audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio6.mp3?alt=media&token=1b8a7d2a-0c19-406b-84ea-5a958e82f3e3');
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    offset = Tween<Offset>(begin:  Offset(0.0, -6.0), end:  Offset(0.0, -5.0))
        .animate(controller);


    controller.forward();


  }
  List<ItemModel> items;
  List<ItemModel>items2;

  int score =0;
  bool gameOver;

  initGame(){
    gameOver = false;

    items=[
      ItemModel(icon:Icon(Icons.account_balance, color: Colors.deepPurpleAccent),name:"بَنَفْسَجيّ", value:"بَنَفْسَجيّ"),
      ItemModel(icon:Icon(Icons.camera_alt, color: Colors.green),name:"اخضر", value:"اخضر"),
      ItemModel(icon:Icon(Icons.drive_eta, color: Colors.pink.shade100),name:"وردي", value:"وردي"),
      ItemModel(icon:Icon(Icons.print, color: Colors.red.shade900),name:"أَحْمَر", value: "أَحْمَر"),
      ItemModel(icon:Icon(Icons.airplanemode_active, color: Colors.teal.shade700),name:"ازرق", value:"ازرق"),
    ];
    items2 = List<ItemModel>.from(items);
    items.shuffle();
    items2.shuffle();
  }

void passe (){
    Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => MapScreen(),


  ),
);
}
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    //
    int DaltonismeScore = ModalRoute.of(context).settings.arguments ;
    final test = Provider.of<TestProvider>(context);

//print("classe"+test.eleves.first.classId.toString());
//print("enseignant"+test.enseigants.first.enseignantId.toString());
    if(items.length == 0){

      gameOver = true;
       deactived = false;
    }
    print('dalto'+DaltonismeScore.toString());
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
                  audioPlayer.play('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/audio6.mp3?alt=media&token=1b8a7d2a-0c19-406b-84ea-5a958e82f3e3');

                },
                child: Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:NetworkImage('https://firebasestorage.googleapis.com/v0/b/login-demo-37c2c.appspot.com/o/haut_parleur.png?alt=media&token=557e20a2-0c37-459e-825c-af7b5cc4b06d'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 200,right: 30,left: 30),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[

                    if(!gameOver)
                      Row(
                        children: <Widget>[
                          Column(
                              children: items2.map((item){
                                return DragTarget<ItemModel>(
                                  onAccept: (receivedItem){
                                    if(item.value== receivedItem.value){
                                      setState(() {
                                        items.remove(receivedItem);
                                        items2.remove(item);
                                        score ++;
                                        print(score);
                                        item.accepting =false;
                                      });

                                    }else{
                                      setState(() {

                                        items.remove(receivedItem);
                                        items2.remove(item);
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
                                    color: item.accepting? Colors.blueGrey.shade50:Colors.transparent,
                                    height: 50,
                                    width: 100,
                                    alignment: Alignment.center,
                                    margin: const EdgeInsets.all(8.0),
                                    child: Text(item.name, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
                                        fontSize: 18.0),),
                                  ),


                                );

                              }).toList()

                          ),
                          Spacer(

                          ),
                          Column(
                              children: items.map((item) {
                                return Container(
                                  margin: const EdgeInsets.all(8.0),
                                  child: Draggable<ItemModel>(
                                    data: item,
                                    childWhenDragging: Icon(item.icon.icon,color: Colors.grey,size: 40,),
                                    feedback: Icon(item.icon.icon,color: item.icon.color,size: 40,),
                                    child: Icon(item.icon.icon,color: item.icon.color,size: 40,),
                                  ),
                                );


                              }).toList()
                          ),


                        ],
                      ),



                  ],
                ),


              ),
            ),
            Align(
                alignment: Alignment.center,
                child: SlideTransition(
                  position: offset,

                  child:Text(
                    'اربط كل شكل باللون المناسب له',
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

            GestureDetector(
              onTap: (){
                user.niveau=0;
                user.UpdateNiveau();
                if (score > 2 ){DaltonismeScore++;}
                test.maladie="";
                test.scoreColorBlind= DaltonismeScore;

                test.classId=test.eleves.first.classId.toString();
                test.enseignantId=test.enseigants.first.enseignantId.toString();
                test.etat="desactivé";


                test.createTestDalto();
    if ( deactived == false ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapScreen(),


                  ),
                );}
              },
              child: Padding(
                padding: const EdgeInsets.only(left:120,top: 583),
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
                if (score < 3 ){DaltonismeScore++;}
                test.maladie="";
                test.scoreColorBlind= DaltonismeScore;

                test.classId=test.eleves.first.classId.toString();
                test.enseignantId=test.enseigants.first.enseignantId.toString();
                test.etat="desactivé";


                test.createTestDalto();
    if ( deactived == false ) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MapScreen(),


                  ),
                );}
              },
              child: Padding(
                  padding: const EdgeInsets.only(left:137,top: 595),
                  child:
                  Text("تأكيد الإجابة ",style: TextStyle(
                    fontFamily: 'Calibri',
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),)
              ),
            ),
          ]
      ),
    );
  }
}

class ItemModel {
  final String name;
  final String value;
  final Icon icon;
  bool accepting;

  ItemModel({this.name, this.value, this.icon, this.accepting= false});}