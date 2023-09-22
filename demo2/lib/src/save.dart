import 'screens/otherPages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTabBarApp(),
    );
  }
}

class MyTabBarApp extends StatefulWidget {
  @override
  _MyTabBarAppState createState() => _MyTabBarAppState();
}

class _MyTabBarAppState extends State<MyTabBarApp> {
  int _currentIndex = 0;

  // ページのリスト
  final List<Widget> _pages = [
    MyScansPage(),
    LibraryPage(),
    ScanPage(),
    SearchPage(),
    HelpPage(),
  ];

  // タブバーのアイコンリスト
  final List<Icon> _tabIcons = [
    Icon(Icons.description),
    Icon(Icons.folder),
    Icon(Icons.scanner),
    Icon(Icons.search),
    Icon(Icons.help),
  ];

  // タブバーのタイトルリスト
  final List<String> _tabTitles = [
    'My Scans',
    'Library',
    'Scan',
    'Search',
    'Help',
  ];

  // 設定メニューを表示するメソッド
  void _showSettingsMenu(BuildContext context) {
    // ここに設定メニューの表示処理を追加
  }

  // メニューページを表示するメソッド
  void _showMenuPage(BuildContext context) {
    // ここにメニューページの表示処理を追加
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0), // AppBarの高さを調整
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black),
              title: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      _showSettingsMenu(context); // 設定アイコン（設定ボタン）をタップしたときの処理
                    },
                  ),
                  Spacer(),
                  Text(
                    _tabTitles[_currentIndex],
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      _showMenuPage(context); // メニューアイコン（メニューボタン）をタップしたときの処理
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: List.generate(_tabIcons.length, (index) {
          if (index == 2) {
            return BottomNavigationBarItem(
                label: '',
                icon: ElevatedButton(
                  onPressed: () {
                    // スキャンボタンが押されたときの処理を追加
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(100, 100),
                    padding: EdgeInsets.all(20.0),
                    shape: const CircleBorder(),
                  ),
                  child: Text(
                    'S',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ));
          } else {
            return BottomNavigationBarItem(
              label: _tabTitles[index],
              icon: _tabIcons[index],
            );
          }
        }),
      ),
    );
  }
}

class MyScansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('My Scans Content'),
    );
  }
}

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Library Content'),
    );
  }
}

class ScanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Scan Page Content'),
    );
  }
}
