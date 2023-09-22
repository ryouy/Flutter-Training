import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  //const LoginScreen({super.key});
  Editor(this.data);
  //Editor(this.subDate);

  final List<dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          //iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                  icon: Icon(Icons.arrow_back_ios_new_outlined,
                      color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                data[0],
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Image.network(
                'https://www.imagetranslate.com/blog/content/images/2022/03/download--20-.png'),
            Center(
              child: Text(
                '${data[1]}\n${data[2]}KB',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ));
  }
}
