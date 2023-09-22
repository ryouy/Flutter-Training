import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:my_scan/main.dart';

bool _lights = true;
double textSize = 25.0;
int _currentSegment = 0;
String _text = '';

void renameModal(BuildContext context, String data, int index) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 232, 232, 232),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: textSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Rename',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      dataList[index][0] = _text;
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
                ],
              ),
            ),
            Divider(
              color: const Color.fromARGB(255, 232, 232, 232),
              height: 1,
              thickness: 1,
              indent: 0.0,
            ),
            Image.asset('images/Rename.png'),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: TextField(
                controller: TextEditingController(text: '$data'), //ここに初期値

                onChanged: (String value) {
                  _text = value;
                },
              ),
            )
          ],
        ),
      );
    },
  );
}
