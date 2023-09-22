import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

bool _lights = true;
double textSize = 25.0;
int _currentSegment = 0;

void showMenuModal(BuildContext context) {
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
            Text(
              'Sort By',
              style: TextStyle(
                color: Colors.black,
                fontSize: textSize,
              ),
            ),
            CupertinoSlidingSegmentedControl<int>(
              groupValue: _currentSegment,
              children: {
                0: Text('Name'),
                1: Text('Updated'),
                2: Text('Created'),
              },
              onValueChanged: (int? newValue) {
                if (newValue != null) {
                  // _currentSegmentの更新
                  _currentSegment = newValue;
                }
              },
            ),
            Text(
              'Show As',
              style: TextStyle(
                color: Colors.black,
                fontSize: textSize,
              ),
            ),
            CupertinoSlidingSegmentedControl<int>(
              groupValue: _currentSegment,
              children: {
                0: Row(
                  children: [
                    Icon(
                      Icons.window_outlined,
                      size: 40,
                    ),
                    Text('Icons')
                  ],
                ),
                1: Row(
                  children: [
                    Icon(
                      Icons.list_alt_outlined,
                      size: 40,
                    ),
                    Text('List')
                  ],
                ),
              },
              onValueChanged: (int? newValue) {
                if (newValue != null) {
                  // _currentSegmentの更新
                  _currentSegment = newValue;
                }
              },
            ),
            Container(
              height: 200,
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

                        title: Text('Select Files'),
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

                        title: Text('Import Photos'),
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

                        title: Text('Import Files'),
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
