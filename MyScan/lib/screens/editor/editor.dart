import 'package:flutter/material.dart';
import 'package:my_scan/screens/SQLiteModules.dart';

class Editor extends StatelessWidget {
  const Editor(this.index, this.folder, {super.key});

  final Folder folder;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_outlined,
                      color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                folder.id,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Image.asset('images/pdf${index % 4}.png'),
            Center(
              child: Text(
                folder.dateCreated,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ],
        ));
  }
}
