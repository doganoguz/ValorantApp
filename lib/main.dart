// @dart=2.9

//bu bir Doğan Oğuz projesidir.

//Ben açamadığım poşeti bile yırtıyorum delikanlı senin kodunu niye yazıcam lan!  EYVALLAH!
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:valorant/ui/constants/color.dart';
import 'package:valorant/ui/pages/home/dashboard.dart';
import 'package:valorant/ui/pages/splash/welcome.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: NowUIColors.statusbar, //statusbar color değiştirme
  ));

  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(MyApp());
}

//test amk
class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Valorant',
        debugShowCheckedModeBanner: false,
        initialRoute: '/dashboard',
        routes: <String, WidgetBuilder>{
          '/dashboard': (BuildContext context) => new Dashboard(),
          '/welcome': (BuildContext context) => new Welcome(),
        });
  }
}
