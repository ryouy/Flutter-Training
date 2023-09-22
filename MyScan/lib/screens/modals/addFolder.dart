import 'package:flutter/material.dart';
import 'package:my_scan/main.dart';
import 'package:my_scan/screens/SQLiteModules.dart';

double textSize = 25.0;
String _text = '';

void folderModal(BuildContext context) {
  showModalBottomSheet(
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
                          fontFamily: 'SF',
                          fontSize: textSize,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'New Folder',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'SF',
                        fontSize: textSize,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        // onRename(_text);

                        addSQLite(_text);
                        cardNum++;
                        dataList.add(Folder(
                            id: _text,
                            name: 'Scan ${cardNum + 2000}-$cardNum-$cardNum',
                            dateCreated:
                                '$cardNum/$cardNum/${cardNum + 2000} -${cardNum * 100}',
                            dateUpdated:
                                '$cardNum/$cardNum/${cardNum + 2000} -${cardNum * 100}'));
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
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'images/folderadd/add.png',
              width: 165,
            ),
            SizedBox(
              height: 30,
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
                //controller: TextEditingController(text: '$data'),
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
