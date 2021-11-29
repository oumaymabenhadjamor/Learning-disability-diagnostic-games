
import 'package:diag/screens/Map.dart';
import 'package:diag/providers/Test.dart';

import 'package:diag/providers/user.dart';



import 'package:diag/screens/helloScreen.dart';
import 'package:diag/screens/loginScreen.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MultiProvider(
      providers: [

        ChangeNotifierProvider.value(value: UserProvider.initialize()),
        ChangeNotifierProvider.value(value: TestProvider.initialize()),



      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Diagnostic App',
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          home: ScreensController())));
}

class ScreensController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final auth = Provider.of<UserProvider>(context);
    switch (auth.status) {
     /* case Status.Uninitialized:
        return Splash();*/
      case Status.Unauthenticated:
      case Status.Authenticating:
        return helloScreen();
      case Status.Authenticated:
     return MapScreen();
     //   return animation();
      default:
        return helloScreen();
    }
  }
}
