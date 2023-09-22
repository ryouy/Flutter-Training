import 'package:flutter/material.dart';

import '../../main.dart';
import '../editor/editor.dart';

bool isData = true;

String urlImage =
    'https://www.imagetranslate.com/blog/content/images/2022/03/download--20-.png';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ListView(
        children: !dataList.isEmpty
            ? [
                GridView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(10),
                  itemCount: dataList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 3,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        (Editor(index, dataList[index]))),
                              );
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/pdf${index % 4}.png',
                                  height: 100,
                                ),
                                Text(
                                  '${dataList[index].id}',
                                  style: TextStyle(
                                    fontFamily: 'SF',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text('${dataList[index].name}')
                              ],
                            )),
                      ],
                    );
                  },
                ),
              ]
            : [
                Image.asset('images/empty.png'),
                Container(
                  width: 278,
                  alignment: Alignment.center,
                  child: const Text(
                    "It's so empty. Let's scan something!\nTap the Scan button below to get started.",
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
