// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Quran {
  final int? id;
  final int? surah;
  final int? ayat;
  final String? ayatArab;
  final String? teks;
  final int? juz;
  final String? terjemahan;

  Quran({
    this.id,
    this.surah,
    this.ayat,
    this.ayatArab,
    this.teks,
    this.juz,
    this.terjemahan,
  });

  Future<List<Quran>> bukaQuran({int? index}) async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, 'qurandb.db');
    // Check if the database exists
    var exists = await databaseExists(path);
    if (!exists) {
      // Should happen only the first time you launch your application
      print('Creating new copy from asset');
      // Make sure the parent directory exists
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}
      // Copy from asset
      ByteData data = await rootBundle.load(join('db', 'quran.db'));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      // Write and flush the bytes written
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print('Opening existing database');
    }
    // open the database
    final database = await openDatabase(path, version: 5);
    final Database db = database;
    final List<Map<String, dynamic>> maps = await db
        .rawQuery("SELECT * FROM teks_ayat WHERE surah = '${index! + 1}'");
    return List.generate(maps.length, (i) {
      return Quran(
        id: maps[i]['id'],
        surah: maps[i]['surah'],
        ayat: maps[i]['ayat'],
        ayatArab: maps[i]['ayat_arab'],
        teks: maps[i]['teks'],
        juz: maps[i]['juz'],
        terjemahan: maps[i]['terjemahan'],
      );
    });
  }
}
