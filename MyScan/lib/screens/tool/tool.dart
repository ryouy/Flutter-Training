import 'package:flutter/material.dart';
import '../modals/adjust.dart';

class ToolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          //Image.asset('images/upgrade.png'),
          for (int i = 0; i < Texts.length - 1; i++) ...[
            //GestureDetector+onLongPress

            SizedBox(
              height: 90,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                    margin: EdgeInsets.only(right: 60, left: 60),
                    padding: EdgeInsets.only(
                      top: 14,
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 221, 221, 221),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                        bottomRight: Radius.circular(16.0),
                        bottomLeft: Radius.circular(16.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        Image.asset('images/tool/${iconUrl[i]}.png'),
                        Text(
                          Texts[i],
                          style: TextStyle(
                            fontFamily: 'SF',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )),
              ),
            ),

            SizedBox(
              height: 20,
            ),
          ],
          SizedBox(
            height: 90,
            child: GestureDetector(
              onTap: () {
                showAdjustModal(context);
              },
              child: Container(
                  margin: EdgeInsets.only(right: 60, left: 60),
                  padding: EdgeInsets.only(
                    top: 14,
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 221, 221, 221),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/tool/size.png',
                        width: 20,
                      ),
                      Text(
                        'Adjust PDF Page Size',
                        style: TextStyle(
                          fontFamily: 'SF',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> Texts = [
  'Guide',
  'PDF to Images',
  'Sign PDF',
  'Combine PDFs',
  'Split PDF',
  'Set PDF Password',
  'Adjust PDF Page Size'
];

List<String> iconUrl = [
  'guide',
  'to',
  'sign',
  'combine',
  'split',
  'pass',
  'size',
];
