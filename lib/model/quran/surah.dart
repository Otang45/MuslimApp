// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:io';
import 'package:flutter/services.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Surah {
  final int? id;
  final int? jumlahAyat;
  final String? namaLatin;
  final String? namaArab;
  final String? terjemah;

  Surah(
      {this.id, this.jumlahAyat, this.namaLatin, this.namaArab, this.terjemah});

  Future<List> bukaSurah() async {
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
    final List<Map<String, dynamic>> surah = await db.query('nama_surah');
    return List.generate(surah.length, (i) {
      return Surah(
          id: surah[i]['id'],
          namaLatin: surah[i]['nama_latin'],
          namaArab: surah[i]['nama_arab'],
          jumlahAyat: surah[i]['jumlah_ayat'],
          terjemah: surah[i]['terjemahan']);
    });
  }
}
