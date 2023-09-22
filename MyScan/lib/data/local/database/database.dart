import 'dart:developer';
import 'dart:io';

import 'package:my_scan/data/local/database/database_configs.dart';
import 'package:sqflite/sqflite.dart';

export 'my_scans_database_provider.dart';

class MyScansDatabaseProvider {
  Database? db;
  Future<String?> getFolderNameById(String folderId) async {
    final db = this.db;
    if (db != null) {
      final List<Map<String, dynamic>> maps = await db.query(
        'Folder',
        columns: ['name'],
        where: 'id = ?',
        whereArgs: [folderId],
      );

      if (maps.isNotEmpty) {
        return maps[0]['name'] as String;
      }
    }

    return null;
  }

  Future<void> open() async {
    final databasePath = await getDatabasesPath();
    try {
      await Directory(databasePath).create(recursive: true);
    } on Exception catch (_) {
      log('');
    }

    db = await openDatabase(databasePath + DatabaseConfigs.databaseName,
        version: DatabaseConfigs.databaseVersion,
        onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE IF NOT EXISTS File(
          type INTEGER
          FOREIGN KEY(folderId) REFERENCES Folder(id)
          FOREIGN KEY(documentId) REFERENCES Document(id)
          )
      ''');
      await db.execute('''
          CREATE TABLE IF NOT EXISTS Document(
          id TEXT PRIMARY KEY NOT NULL,
          name TEXT,
          page INTEGER,
          dateCreated TEXT,
          dateUpdated TEXT,
          folderId TEXT,
          FOREIGN KEY(folderId) REFERENCES Folder(id)
          )
      ''');
      await db.execute('''
          CREATE TABLE IF NOT EXISTS Page(
          id TEXT PRIMARY KEY NOT NULL,
          name TEXT,
          page INTEGER,
          dateCreated TEXT,
          dateUpdated TEXT,
          documentId TEXT,
          FOREIGN KEY(documentId) REFERENCES Document(id)
          )
      ''');
      await db.execute('''
          CREATE TABLE IF NOT EXISTS Folder(
          id TEXT PRIMARY KEY NOT NULL,
          name TEXT,
          dateCreated TEXT,
          dateUpdated TEXT,
          )
      ''');
      final batch = db.batch();
      await batch.commit();
    });
  }
}
