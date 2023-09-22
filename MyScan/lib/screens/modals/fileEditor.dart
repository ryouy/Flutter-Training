import 'package:flutter/material.dart';
import 'package:my_scan/screens/SQLiteModules.dart';

import 'delete.dart';
import 'rename.dart';

void showEditorModal(
    BuildContext context, Folder data, int index, VoidCallback onDeleteItem,
    {required Function(String) onRename}) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return _MenuScreen(
        data: data,
        index: index,
        onDeleteItem: onDeleteItem,
        onRename: onRename,
      );
    },
  );
}

class _MenuScreen extends StatefulWidget {
  final Folder data;
  final int index;
  final VoidCallback onDeleteItem;
  final Function(String) onRename;

  const _MenuScreen({
    required this.data,
    required this.index,
    required this.onDeleteItem,
    required this.onRename,
    Key? key,
  }) : super(key: key);

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
        height: MediaQuery.of(context).size.height * 2 / 4,
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
              height: 20,
            ),
            Image.asset('images/menu/arrow.png'),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 400,
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
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    SizedBox(
                      width: 200,
                      child: Card(
                        color: Colors.white,
                        elevation: 0,
                        child: ListTile(
                          onTap: () {},
                          enabled: true,
                          title: Text(
                            'Share',
                            style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 23.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Image.asset('images/fileedit/share.png'),
                        ),
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
                            'Copy',
                            style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 23.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Image.asset('images/fileedit/copy.png')),
                    ),
                    _thinDivider(),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                          onTap: () {
                            renameModal(context, widget.data.name, widget.index,
                                (newName) {
                              widget.onRename(newName);
                            });
                          },
                          enabled: true,
                          title: Text(
                            'Rename',
                            style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 23.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Image.asset('images/fileedit/rename.png')),
                    ),
                    _thinDivider(),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                          onTap: () {},
                          enabled: true,
                          title: Text(
                            'Move',
                            style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 23.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Image.asset('images/fileedit/move.png')),
                    ),
                    _thinDivider(),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                          onTap: () {
                            deleteDialog(context, widget.index, () {
                              widget.onDeleteItem.call();
                            });
                          },
                          enabled: true,
                          title: Text(
                            'Delete',
                            style: TextStyle(
                              fontFamily: 'SF',
                              fontSize: 23.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Image.asset('images/fileedit/delete.png')),
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
