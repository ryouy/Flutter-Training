import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

double textSize = 25.0;
int _1stCurrentSegment = 0;
int _2ndCurrentSegment = 0;

void showMenuModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return _MenuScreen();
    },
  );
}

class _MenuScreen extends StatefulWidget {
  const _MenuScreen({super.key});

  @override
  State<_MenuScreen> createState() => __MenuScreenState();
}

class __MenuScreenState extends State<_MenuScreen> {
  double textSize = 25.0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // SingleChildScrollViewを追加
      child: Container(
        height: MediaQuery.of(context).size.height * 1 / 2,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 245, 245),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset('images/menu/arrow.png'),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '          Sort By',
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 23.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (32 / 37),
              child: CupertinoSlidingSegmentedControl<int>(
                groupValue: _1stCurrentSegment,
                children: {
                  0: Text(
                    'Name',
                    style: TextStyle(
                      fontFamily: 'SF',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  1: Text(
                    'Updated',
                    style: TextStyle(
                      fontFamily: 'SF',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  2: Text(
                    'Created',
                    style: TextStyle(
                      fontFamily: 'SF',
                      fontSize: 17.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                },
                onValueChanged: (int? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _1stCurrentSegment = newValue;
                    });
                  }
                },
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '          Show As',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 23.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (32 / 37),
              child: CupertinoSlidingSegmentedControl<int>(
                groupValue: _2ndCurrentSegment,
                children: {
                  0: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/menu/Icons.png'),
                      Text(
                        'Icons',
                        style: TextStyle(
                          fontFamily: 'SF',
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  1: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/menu/List.png'),
                      Text(
                        'List',
                        style: TextStyle(
                          fontFamily: 'SF',
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                },
                onValueChanged: (int? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _2ndCurrentSegment = newValue;
                    });
                  }
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                  topRight: Radius.circular(18.0),
                  bottomLeft: Radius.circular(18.0),
                  bottomRight: Radius.circular(18.0),
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * (32 / 37),
                child: ListView(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        onTap: () {},
                        enabled: true,
                        title: Text(
                          'Select Files',
                          style: TextStyle(
                            fontFamily: 'SF',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        trailing: Image.asset('images/menu/select.png'),
                      ),
                    ),
                    _thinDivider(),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                          onTap: () {},
                          enabled: true,
                          title: Text(
                            'Import Photos',
                            style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Image.asset('images/menu/importPhoto.png')),
                    ),
                    _thinDivider(),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                          onTap: () {},
                          enabled: true,
                          title: Text(
                            'Import Files',
                            style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Image.asset('images/menu/importFile.png')),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _thinDivider() {
  return Divider(
    color: Colors.grey,
    height: 1,
    thickness: 0.5,
    indent: 0.0,
  );
}
