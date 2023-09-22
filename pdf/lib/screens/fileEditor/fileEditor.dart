import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../rename/rename.dart';
import '../delete/delete.dart';

bool _lights = true;
double textSize = 25.0;
int _currentSegment = 0;

void showEditorModal(BuildContext context, List<dynamic> data, int index) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 245, 245, 245),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.arrow_circle_down_outlined,
              size: 40,
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
                //width: 300,
                child: ListView(
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        onTap: () {},
                        enabled: true,

                        title: Text('Share'),
                        //subtitle: Text(subDate[i]),
                        trailing: IconButton(
                          icon: new Icon(Icons.more_horiz_rounded),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                      indent: 0.0,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        onTap: () {},
                        enabled: true,

                        title: Text('Copy'),
                        //subtitle: Text(subDate[i]),
                        trailing: IconButton(
                          icon: new Icon(Icons.more_horiz_rounded),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                      indent: 0.0,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        onTap: () {
                          renameModal(context, data[0], index);
                        },
                        enabled: true,

                        title: Text('Rename'),
                        //subtitle: Text(subDate[i]),
                        trailing: IconButton(
                            icon: new Icon(Icons.more_horiz_rounded),
                            onPressed: () {}),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                      indent: 0.0,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        onTap: () {},
                        enabled: true,

                        title: Text('Move'),
                        //subtitle: Text(subDate[i]),
                        trailing: IconButton(
                          icon: new Icon(Icons.more_horiz_rounded),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                      indent: 0.0,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 0,
                      child: ListTile(
                        onTap: () {
                          deleteDialog(context, index);
                        },
                        enabled: true,

                        title: Text('Delete'),
                        //subtitle: Text(subDate[i]),
                        trailing: IconButton(
                          icon: new Icon(Icons.more_horiz_rounded),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                      thickness: 1,
                      indent: 0.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
