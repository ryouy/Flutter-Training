import '../tool/tool.dart';
import 'package:flutter/material.dart';
import '../myscans/myscan.dart';
import '../library/library.dart';
import '../modals/setting.dart';
import '../modals/menu.dart';
import '../modals/addFolder.dart';
import '../SQLiteModules.dart';

class TopPage extends StatefulWidget {
  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    MyScansPage(),
    LibraryPage(),
    ScanPage(),
    SearchPage(),
    ToolPage(),
  ];

  final List<Icon> _tabIcons = [
    Icon(Icons.description),
    Icon(Icons.folder),
    Icon(Icons.scanner),
    Icon(Icons.search),
    Icon(Icons.pan_tool_alt_rounded),
  ];

  final List<String> _tabTitles = [
    'My Scans',
    'Library',
    'Scan',
    'Search',
    'Tool',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight + 30), // SafeAreaの高さを追加
        child: SafeArea(
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        showSettingsModal(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 30, left: 30),
                        child: Image.asset(
                          'images/top/setting.png',
                          width: 24,
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      child: Row(
                        children: [
                          if (_currentIndex == 1)
                            GestureDetector(
                              onTap: () {
                                folderModal(context);
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Image.asset(
                                  'images/top/folder.png',
                                  height: 24,
                                ),
                              ),
                            ),
                          GestureDetector(
                            onTap: () {
                              showMenuModal(context);
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 30, left: 30),
                              child: Image.asset(
                                'images/top/menu.png',
                                width: 24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size(30, 30),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  _tabTitles[_currentIndex],
                  style: const TextStyle(
                    fontFamily: 'SF',
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              width: 0.2,
              color: Colors.black,
            ),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 1,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          iconSize: 35.0,
          items: List.generate(_tabIcons.length, (index) {
            if (index == 2) {
              return BottomNavigationBarItem(
                label: '',
                icon: MaterialButton(
                  padding: EdgeInsets.all(0.0),
                  textColor: Colors.black,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('images/top/blueButton.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(45.0),
                      child: Text(""),
                    ),
                  ),
                  onPressed: () {
                    // slide new screen
                  },
                ),
              );
            } else {
              return BottomNavigationBarItem(
                label: _tabTitles[index],
                icon: _tabIcons[index],
              );
            }
          }),
        ),
      ),
    );
  }
}

class ScanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('hi');
  }
}
