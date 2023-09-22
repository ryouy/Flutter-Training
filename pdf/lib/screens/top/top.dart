import '../other/otherPages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../myscans/myscan.dart';
import '../library/library.dart';
import '../setting/setting.dart';
import '../menu/menu.dart';

class TopPage extends StatefulWidget {
  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  int _currentIndex = 0;
  // bool _lights = true;

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
    Icon(Icons.help_center),
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //    _currentIndex==1
            //   ? []:[],
            Row(
              children: [
                if (_currentIndex == 1)
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      showSettingsModal(context);
                    },
                  ),
                Spacer(),
                if (_currentIndex == 1)
                  IconButton(
                    icon: Icon(Icons.more_horiz_rounded),
                    onPressed: () {
                      showMenuModal(context);
                    },
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
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
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
                        image: AssetImage('images/blueButton.png'),
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
    return Text('');
  }
}
