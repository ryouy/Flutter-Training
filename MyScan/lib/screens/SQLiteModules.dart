import 'dart:developer';
import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../../../main.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('hi');
  }
}

void main() async {
  final databaseProvider = MyScansDatabaseProvider();
  await databaseProvider.open();

  // フォルダを追加する例
  final folder = Folder(
    id: '1', // フォルダの一意のID
    name: 'My Folder', // フォルダの名前
    dateCreated: '2023-09-18', // 作成日時
    dateUpdated: '2023-09-18', // 更新日時
  );
  await databaseProvider.addFolder(folder);

  print('Folder added successfully.');

  // データベースからすべてのフォルダを取得する例
  final folders = await databaseProvider.getAllFolders();
  for (var folder in folders) {
    print('Folder ID: ${folder.id}, Name: ${folder.name}');
  }
}

class DatabaseConfigs {
  static const String databaseName = 'my_scan.db';
  static const int databaseVersion = 1;
}

class Folder extends Equatable {
  final String id;
  final String name;
  final String dateCreated;
  final String dateUpdated;

  const Folder({
    required this.id,
    required this.name,
    required this.dateCreated,
    required this.dateUpdated,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'dateCreated': dateCreated,
      'dateUpdated': dateUpdated,
    };
  }

  @override
  List<Object?> get props => [id, name, dateCreated, dateUpdated];
}

class MyScansDatabaseProvider {
  Database? db;

  Future<void> open() async {
    final databasePath = await getDatabasesPath();
    try {
      await Directory(databasePath).create(recursive: true);
    } on Exception catch (_) {
      log('');
    }

    db = await openDatabase(
      join(databasePath, DatabaseConfigs.databaseName),
      version: DatabaseConfigs.databaseVersion,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE IF NOT EXISTS Folder(
            id TEXT PRIMARY KEY NOT NULL,
            name TEXT,
            dateCreated TEXT,
            dateUpdated TEXT
          )
        ''');
      },
    );
  }

  Future<void> updateFolder(Folder folder) async {
    final db = this.db;
    if (db != null) {
      await db.update(
        'Folder',
        folder.toMap(),
        where: 'id = ?', // 更新するフォルダのIDに基づいて検索
        whereArgs: [folder.id], // フォルダのIDを指定
      );
    }
  }

  Future<void> addFolder(Folder folder) async {
    final db = this.db;
    if (db != null) {
      await db.insert('Folder', folder.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
  }

  Future<void> deleteFolder(String folderId) async {
    final db = this.db;
    if (db != null) {
      await db.delete('Folder', where: 'id = ?', whereArgs: [folderId]);
    }
  }

  Future<List<Folder>> getAllFolders() async {
    final db = this.db;
    if (db != null) {
      final List<Map<String, dynamic>> maps = await db.query('Folder');
      return List.generate(maps.length, (i) {
        return Folder(
          id: maps[i]['id'],
          name: maps[i]['name'],
          dateCreated: maps[i]['dateCreated'],
          dateUpdated: maps[i]['dateUpdated'],
        );
      });
    }
    return [];
  }
}

void addSQLite(String newName) async {
  final databaseProvider = MyScansDatabaseProvider();
  await databaseProvider.open();
  // フォルダを追加する例
  //update max size od sql
  final folder = Folder(
    id: '$cardNum',
    name: '$newName',
    dateCreated: '2023-09-18',
    dateUpdated: '2023-09-18',
  );
  await databaseProvider.addFolder(folder);
  print('You added Id: $cardNum');
  getSQLite();
}

void updateSQLite(Folder folder) async {
  final databaseProvider = MyScansDatabaseProvider();
  await databaseProvider.open();
  // フォルダを追加する例
  await databaseProvider.updateFolder(folder);
  print('You renamed Id: ${folder.id}');
  getSQLite();
}

void getSQLite() async {
  final databaseProvider = MyScansDatabaseProvider();
  await databaseProvider.open();
  // すべてのフォルダを取得する例
  final folders = await databaseProvider.getAllFolders();
  for (var folder in folders) {
    print('Folder ID: ${folder.id}, Name: ${folder.name}');
  }
}

void deleteSQLite(Folder folder) async {
  final databaseProvider = MyScansDatabaseProvider();
  await databaseProvider.open();
  // フォルダを削除する例
  await databaseProvider.deleteFolder(folder.id);
  //final folders = await databaseProvider.getAllFolders();
  print('You deleted Id: ${folder.id}');
  getSQLite();
}

Future<void> initSQLite() async {
  final databaseProvider = MyScansDatabaseProvider();
  await databaseProvider.open();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  final seen = preferences.getBool("seen") ?? false;
  if (!seen) {
    for (int i = 1; i <= cardNum; i++) {
      final folder = Folder(
        id: '$i',
        name: 'Scan ${i + 2000}-$i-$i',
        dateCreated: '${i + 2000} -$i-$i',
        dateUpdated: '${i * 100}KB',
      );
      await databaseProvider.addFolder(folder);
    }
  }
}
