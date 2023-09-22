import 'package:flutter/material.dart';
import 'package:my_scan/navigation/navigation.dart';

import 'theme/theme.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../app/app_info.dart';
import 'package:async/async.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'navigation/navigation.dart';

int cardNum = 7;
bool isData = true;
List<List<dynamic>> dataList = [];
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    // dataListの初期化をここで行う
    for (int i = 1; i <= cardNum; i++) {
      String year1 =
          'Scan ${i + 2021}-$i-${i + 2} ${i + 11}:${i * 2 + 45}:${i * 3 + 22}';
      String year2 = '${i + 2}/$i/${i + 2021} -${i * 3223 + 43133}';
      int KBsize = i * 100;

      List<dynamic> data = [year1, year2, KBsize];
      dataList.add(data);
    }
  } // This widget is the root of your application.

  void updateDataList(int index, String newname) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      onGenerateRoute: AppNavigation.onGeneratedRoute,
      initialRoute: AppRoutes.intro,
      debugShowCheckedModeBanner: false,
      //home: Splash(),
    );
  }
}
/*
class Splash extends StatefulWidget {
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Top()));
    } else {
      await prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => new Intro()));
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();
}
*/
