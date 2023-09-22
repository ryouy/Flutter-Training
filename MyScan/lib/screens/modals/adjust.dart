import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

bool _lights = true;
double textSize = 25.0;
int _1stCurrentSegment = 0;
int _2ndCurrentSegment = 0;

void showAdjustModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return _AdjustScreen();
    },
  );
}

class _AdjustScreen extends StatefulWidget {
  const _AdjustScreen({super.key});

  @override
  State<_AdjustScreen> createState() => __AdjustScreenState();
}

class __AdjustScreenState extends State<_AdjustScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
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
            height: 10,
          ),
          Image.asset(
            'images/menu/arrow.png',
          ),
          Center(
            child: Text(
              'Adjust PDF Page Size',
              style: TextStyle(
                fontFamily: 'SF',
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'images/tool/size.png',
            width: 40,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * (32 / 37),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Purus vitae mi lectus dignissim quis. Est sapien risus sed facilisis tincidunt. Dolor duis ullamcorper placerat porttitor malesuada consequat. Pulvinar vel tellus nullam orci pharetra ipsum. Odio velit et tellus commodo. Risus libero nibh erat aliquet.',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
