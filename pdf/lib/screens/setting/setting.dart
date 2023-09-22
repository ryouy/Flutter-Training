import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

bool _lights = true;
double textSize = 25.0;

void showSettingsModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: textSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  color: Color.fromARGB(255, 255, 252, 252),
                  thickness: 1.0,
                  height: 0.0,
                  indent: 0.0,
                  endIndent: 0.0,
                ),
              ],
            ),
            Expanded(
              //color: const Color.fromARGB(255, 116, 101, 101),
              child: ListView(
                //Color: Colors.black,
                //mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(50.0),
                  ),
                  Text('App Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textSize,
                      )),
                  Container(
                    //padding: EdgeInsets.only(left: 30, right: 30),
                    width: MediaQuery.of(context).size.width * 0.8, // 画面幅の80％
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 46, 46),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text('Start with Camera',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textSize,
                                )),
                            Spacer(),
                            CupertinoSwitch(
                              value: _lights,
                              activeColor: CupertinoColors.activeBlue,
                              onChanged: (bool value) {
                                // setState(() {
                                //    _lights = !_lights;
                                //  });
                              },
                            ),
                          ],
                        ),
                        Divider(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          thickness: 0.4,
                          height: 0.0,
                          indent: 0.0,
                          endIndent: 0.0,
                        ),
                        Row(
                          children: [
                            Text('Crop & Filter After Scan',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textSize,
                                )),
                            Spacer(),
                            CupertinoSwitch(
                              value: _lights,
                              activeColor: CupertinoColors.activeBlue,
                              onChanged: (bool value) {
                                // setState(() {
                                //    _lights = !_lights;
                                //  });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text('Share Settings',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textSize,
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.8, // 画面幅の80％
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 47, 46, 46),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Email Myself',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: textSize,
                            ),
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward_ios_outlined,
                                color: Colors.white),
                          )
                        ],
                      )),
                  Text('About',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: textSize,
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8, // 画面幅の80％
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 47, 46, 46),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("What's New",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textSize,
                                )),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_outlined,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Divider(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          thickness: 0.4,
                          height: 0.0,
                          indent: 0.0,
                          endIndent: 0.0,
                        ),
                        Row(
                          children: [
                            Text("Privacy Policy",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textSize,
                                )),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_outlined,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Divider(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          thickness: 0.4,
                          height: 0.0,
                          indent: 0.0,
                          endIndent: 0.0,
                        ),
                        Row(
                          children: [
                            Text("Terms & Conditions",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: textSize,
                                )),
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward_ios_outlined,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
