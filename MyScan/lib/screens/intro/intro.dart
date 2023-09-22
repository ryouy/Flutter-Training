import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../navigation/navigation.dart';

class Intro extends StatelessWidget {
  Intro({Key? key}) : super(key: key);
  var introPages = [
    PageViewModel(
      titleWidget: const SizedBox(
        width: 335,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Scan Any Document",
                style: TextStyle(
                    fontFamily: 'SF',
                    fontSize: 34.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 7.0),
            Text(
              "Scan multi-page documents easily with automatic detection.",
              style: TextStyle(fontSize: 15.0),
            ),
            SizedBox(height: 15.0),
          ],
        ),
      ),
      bodyWidget: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Row(
            children: [
              Spacer(),
              Image.asset('images/intro/Document.png'),
              Spacer(),
              Image.asset('images/intro/Receipt.png'),
              Spacer(),
              Image.asset('images/intro/Photo.png'),
              Spacer(),
            ],
          ),
          Row(
            children: [
              Spacer(),
              Image.asset('images/intro/Book.png'),
              Spacer(),
              Image.asset('images/intro/ID Card.png'),
              Spacer(),
              Image.asset('images/intro/Newspaper.png'),
              Spacer(),
            ],
          )
        ],
      )),
    ),
    PageViewModel(
      titleWidget: const SizedBox(
        width: 335,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Save & Share PDFs",
                style: TextStyle(
                    fontFamily: 'SF',
                    fontSize: 34.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 7.0),
            Text(
              "Upload your scans to cloud drives for backup and safe-keeping with convenient shortcuts.",
              style: TextStyle(fontSize: 15.0),
            ),
            SizedBox(height: 73.0),
          ],
        ),
      ),
      bodyWidget: SizedBox(
        width: 400,
        child: Image.asset(
          'images/intro/introIcons2.png',
        ),
      ),
    ),
    PageViewModel(
      titleWidget: const SizedBox(
        width: 335,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sign Documents",
                style: TextStyle(
                    fontFamily: 'SF',
                    fontSize: 34.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 7.0),
            Text(
              "Add your signature, name, date or any text to e-sign documents.",
              style: TextStyle(fontSize: 15.0),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
      bodyWidget: SizedBox(
        //width: ,
        child: Image.asset(
          'images/intro/invoice.png',
          width: 320.0,
        ),
      ),
    ),
    PageViewModel(
        titleWidget: const SizedBox(
          width: 335,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Trusted by Users",
              style: TextStyle(
                  fontFamily: 'SF',
                  fontSize: 34.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
        bodyWidget: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.0),
              for (int i = 0; i < 10; i++) ...[
                SizedBox(
                  width: 330.0,
                  child: Image.asset('images/intro/review.png'),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ],
          ),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            //minimum: EdgeInsets.all(10),
            //right: false,
            //left: false,
            child: IntroductionScreen(
      pages: introPages,
      next: const Text("Next",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
      done: const Text("Get Started",
          style: TextStyle(fontWeight: FontWeight.bold)),
      onDone: () => Navigator.of(context).pushReplacementNamed(AppRoutes.top),
      baseBtnStyle: TextButton.styleFrom(
        backgroundColor: Colors.blue,
      ),
      doneStyle: TextButton.styleFrom(foregroundColor: Colors.white),
      nextStyle: TextButton.styleFrom(foregroundColor: Colors.white),
      scrollPhysics: ClampingScrollPhysics(),
      dotsDecorator: DotsDecorator(
        size: const Size.square(15.0),
        activeSize: const Size(10.0, 3.0),
        activeColor: Color.fromARGB(255, 51, 119, 255),
        color: Colors.black26,
        spacing: const EdgeInsets.symmetric(horizontal: 8.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    )));
  }
}
