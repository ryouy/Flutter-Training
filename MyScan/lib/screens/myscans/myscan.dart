import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '/main.dart';
import '../editor/editor.dart';
import '../modals/fileEditor.dart';
import '../SQLiteModules.dart';

//List<List<dynamic>> dataList = [];

class MyScansPage extends StatefulWidget {
  @override
  _MyScansPageState createState() => _MyScansPageState();
}

class _MyScansPageState extends State<MyScansPage> {
  @override
  void initState() {
    super.initState();
  } // This widget is the root of your application.

  void updateDataList(int index, String newname) {
    setState(() {});
  }

  deleteItem(Folder folder) async {
    dataList.remove(folder);
    final databaseProvider = MyScansDatabaseProvider();
    await databaseProvider.open();
    List<String> ids = [];
    final folders = await databaseProvider.getAllFolders();
    for (var folder in folders) {
      //print('Folder ID: ${folder.id}, Name: ${folder.name}');
      ids.add('${folder.id}');
    }
    deleteSQLite(folder);
    setState(() {});
  }

  renameItem(Folder folder, String newName) async {
    final databaseProvider = MyScansDatabaseProvider();
    await databaseProvider.open();
    final index = dataList.indexOf(folder);
    dataList.remove(folder);
    final cacheFolder = Folder(
        id: folder.id,
        name: newName,
        dateCreated: folder.dateUpdated,
        dateUpdated: DateTime.now().toString());
    dataList.insert(index, cacheFolder);
    setState(() {});
    updateSQLite(cacheFolder);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: ListView(
        //reverse: true,
        children: dataList.isNotEmpty
            ? [
                Column(
                  children: [
                    Image.asset(
                      'images/myscan/info.png',
                      width: MediaQuery.of(context).size.width * 370 / 373,
                    ),
                    for (int i = 0; i < dataList.length; i++) ...[
                      //GestureDetector+onLongPress
                      Slidable(
                        key: UniqueKey(),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          extentRatio: 0.8,
                          children: [
                            SlidableAction(
                              // (3)
                              onPressed: (_) {}, // (4)
                              backgroundColor:
                                  Color.fromARGB(255, 123, 123, 123),
                              //foregroundColor: AppColor.backgroundColor, // (4)
                              icon: Icons.more_horiz_outlined, // (4)
                              label: 'More',
                            ),
                            SlidableAction(
                              // (3)
                              onPressed: (_) {
                                deleteItem(dataList[i]);
                              },
                              backgroundColor: Color.fromARGB(255, 255, 47, 47),
                              //foregroundColor: AppColor.backgroundColor,
                              icon: Icons.delete_forever_outlined,
                              label: 'Delete',
                            ),
                            SlidableAction(
                              // (3)
                              onPressed: (_) {},
                              backgroundColor:
                                  Color.fromARGB(255, 28, 156, 248),
                              // foreground: white,
                              icon: Icons.share_outlined,
                              label: 'Share',
                            ),
                          ],
                        ),
                        child: Card(
                          color: Colors.white,
                          elevation: 0,
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        (Editor(i, dataList[i]))),
                              );
                            },
                            enabled: true,
                            leading: Image.asset('images/pdf${i % 4}.png'),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _cardText(dataList[i].id, 20.0),
                                SizedBox(height: 1.0),
                                _cardText(dataList[i].name, 16.0),
                                SizedBox(height: 2.0),
                                _cardText('${dataList[i].dateCreated}KB', 17),
                              ],
                            ),
                            trailing: IconButton(
                              icon: new Icon(Icons.more_horiz_rounded),
                              onPressed: () {
                                showEditorModal(context, dataList[i], i + 1,
                                    () {
                                  deleteItem(dataList[i]);
                                }, onRename: (newName) {
                                  renameItem(dataList[i], newName);
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const Divider(
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

Widget _cardText(String text, double size) {
  return Text(
    '$text',
    style: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontFamily: 'SF',
      fontSize: size,
      fontWeight: FontWeight.w700,
    ),
    overflow: TextOverflow.ellipsis,
    maxLines: 1,
  );
}
