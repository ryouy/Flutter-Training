import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

double textSize = 14.0;

void showSettingsModal(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return _SettingScreen();
    },
  );
}

class _SettingScreen extends StatefulWidget {
  const _SettingScreen({Key? key});

  @override
  State<_SettingScreen> createState() => __SettingScreenState();
}

class __SettingScreenState extends State<_SettingScreen> {
  bool _1stLights = true;
  bool _2ndLights = true;

  double textSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 2 / 3,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 19, 19, 19),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 150,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SF',
                    fontSize: textSize,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'SF',
                      fontSize: textSize,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            _thinDivider(),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (30 / 37),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'App Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SF',
                    fontSize: textSize,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (31.5 / 37),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 87, 87, 87),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '   Start with Camera',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF',
                            fontSize: textSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        CupertinoSwitch(
                          value: _1stLights,
                          activeColor: CupertinoColors.activeBlue,
                          onChanged: (bool value) {
                            setState(() {
                              _1stLights = !_1stLights;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  _thinDivider(),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 87, 87, 87),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18.0),
                        bottomRight: Radius.circular(18.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '   Crop & Filter After Scan',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF',
                            fontSize: textSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                        CupertinoSwitch(
                          value: _2ndLights,
                          activeColor: CupertinoColors.activeBlue,
                          onChanged: (bool value) {
                            setState(() {
                              _2ndLights = !_2ndLights;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (30.0 / 37),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Share Settings',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SF',
                    fontSize: textSize,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.0),
                  topRight: Radius.circular(18.0),
                  bottomLeft: Radius.circular(18.0),
                  bottomRight: Radius.circular(18.0),
                ),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * (32 / 37),
                child: Card(
                  color: Color.fromARGB(255, 87, 87, 87),
                  elevation: 0,
                  child: ListTile(
                    onTap: () {},
                    enabled: true,
                    title: Text(
                      "Email Myself",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF',
                        fontSize: textSize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * (30 / 37),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'About',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SF',
                    fontSize: textSize,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 87, 87, 87),
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
                      color: Color.fromARGB(255, 87, 87, 87),
                      elevation: 0,
                      child: ListTile(
                        onTap: () {},
                        enabled: true,
                        title: Text(
                          "What's New",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF',
                            fontSize: textSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    _thinDivider(),
                    Card(
                      color: Color.fromARGB(255, 87, 87, 87),
                      elevation: 0,
                      child: ListTile(
                        onTap: () {},
                        enabled: true,
                        title: Text(
                          'Privacy Policy',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF',
                            fontSize: textSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    _thinDivider(),
                    Card(
                      color: Color.fromARGB(255, 87, 87, 87),
                      elevation: 0,
                      child: ListTile(
                        onTap: () {},
                        enabled: true,
                        title: Text(
                          'Terms & Conditions',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SF',
                            fontSize: textSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.white70,
                        ),
                      ),
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
    color: const Color.fromARGB(255, 255, 255, 255),
    height: 1,
    thickness: 0.5,
    indent: 0.0,
  );
}
