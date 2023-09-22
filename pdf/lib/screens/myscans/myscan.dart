import 'package:flutter/material.dart';
import '../editor/editor.dart';
import '../fileEditor/fileEditor.dart';
import '../../main.dart';

bool isData = true;

class MyScansPage extends StatefulWidget {
  @override
  _MyScansPageState createState() => _MyScansPageState();
}

class _MyScansPageState extends State<MyScansPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: !dataList.isEmpty
            ? [
                Column(
                  children: [
                    for (int i = 0; i < cardNum; i++) ...[
                      //GestureDetector+onLongPress
                      Card(
                        color: Colors.white,
                        elevation: 0,
                        child: ListTile(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (Editor(dataList[i]))),
                            );
                          },
                          enabled: true,
                          leading: Image.asset('images/pdf.png'),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                dataList[i][0],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'SF',
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 1.0),
                              Text(
                                dataList[i][1],
                                style: TextStyle(
                                  color: Color.fromARGB(255, 132, 136, 144),
                                  fontFamily: 'SF',
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 2.0),
                              Text(
                                '${dataList[i][2]}KB',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 132, 136, 144),
                                  fontFamily: 'SF',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                          //subtitle: Text(subDate[i]),
                          trailing: IconButton(
                            icon: new Icon(Icons.more_horiz_rounded),
                            onPressed: () {
                              showEditorModal(context, dataList[i], i);
                            },
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 1,
                        thickness: 1,
                        indent: 75.0,
                      ),
                    ],
                  ],
                ),
              ]
            : [
                Image.asset('images/empty.png'),
                Container(
                  width: 278,
                  alignment: Alignment.center,
                  child: const Text(
                    'It’s so empty. Let’s scan something!\nTap the Scan button below to get started.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 132, 136, 144),
                      fontFamily: 'SF',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
      ),
    );
  }
}
