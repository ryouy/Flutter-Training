import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

bool _lights = true;
double textSize = 25.0;
int _currentSegment = 0;
String _text = '';

void renameModal(BuildContext context, String data, int index,
    Function(String newname) onRename) {
  showModalBottomSheet(
    //isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(
            1,
            242,
            242,
            242,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: SizedBox(
                height: 56,
                child: Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
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
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        onRename(_text);
                      },
                      child: Text(
                        'Done',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 13,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Color.fromARGB(255, 126, 126, 126),
              height: 1,
              thickness: 1,
              indent: 0.0,
            ),
            Image.asset(
              'images/rename/rename.png',
              width: 153,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 250, 250),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                  bottomLeft: Radius.circular(16.0),
                  bottomRight: Radius.circular(16.0),
                ),
              ),
              //  width: 200,
              height: 40,
              width: MediaQuery.of(context).size.width * 343 / 375,
              //decoration: BoxDecoration(color: Colors.white),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      TextEditingController controller =
                          TextEditingController();
                      controller.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
                controller: TextEditingController(text: '$data'),
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
