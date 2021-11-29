
import 'package:diag/providers/user.dart';
import 'package:diag/widget/screen_navigation.dart';
import 'package:diag/screens/loginScreen.dart';


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widget/custom_text.dart';
import '../widget/loading.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _key =GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final authProvider =Provider.of<UserProvider>(context);
    return Scaffold
      (
      key:_key,
      backgroundColor: Colors.white,
      body: authProvider.status == Status.Authenticating? Loading() : SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png",width: 240,height: 240,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller: authProvider.name,
                    decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: "UserName",
                        icon: Icon(Icons.person)
                    ),

                  ),) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller: authProvider.email,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "email",
                        icon: Icon(Icons.email)
                    ),

                  ),) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller: authProvider.password,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "password",
                        icon: Icon(Icons.lock)
                    ),

                  ),) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Padding(padding: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    controller: authProvider.age,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "age",
                        icon: Icon(Icons.lock)
                    ),

                  ),) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: ()async{

                  if(!await authProvider.signUp()) {
                    _key.currentState.showSnackBar(
                        SnackBar(content: Text("registration failed!"))
                    );
                    return;
                  }
                  authProvider.clearController();
                  changeScreenReplacement(context, loginScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Padding(padding: EdgeInsets.only(top: 10,bottom: 10,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CustomText(text: "Register",color:Colors.white,size: 22,)
                      ],
                    ),) ,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                changeScreen(context,loginScreen() );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomText(text: "Login here",size: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }}