import 'package:flutter/material.dart';
import 'package:my_scan/navigation/navigation.dart';
import 'package:my_scan/screens/SQLiteModules.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'theme/theme.dart';

int cardNum = 7;
bool isFirst = false;
List<Folder> dataList = [];

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late MyScansDatabaseProvider databaseProvider;

  @override
  void initState() {
    initSQLite();
    super.initState();

    databaseProvider = MyScansDatabaseProvider();
    databaseProvider.open();
    initializeData();
  }

  Future<void> initializeData() async {
    await initSQLite();

    final folders = await databaseProvider.getAllFolders();
    dataList.addAll(folders);
    dataList.sort((a, b) => int.parse(a.id).compareTo(int.parse(b.id)));
    setState(() {});
  }

  void updateDataList(int index, String newname) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return const Splash();
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<Splash> {
  Future checkFirstSeen() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    final seen = preferences.getBool("seen") ?? false;

    if (!seen)
      isFirst = true;
    else
      await preferences.setBool('seen', true);
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isFirst) {
      return MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        onGenerateRoute: AppNavigation.onGeneratedRoute,
        initialRoute: AppRoutes.top,
        debugShowCheckedModeBanner: false,
      );
    } else {
      return MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        onGenerateRoute: AppNavigation.onGeneratedRoute,
        initialRoute: AppRoutes.intro,
        debugShowCheckedModeBanner: false,
      );
    }
  }
}
