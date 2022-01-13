import 'package:flutter/foundation.dart';
import 'bookmark.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookMarkData extends ChangeNotifier {
  int ayat = 0;
  int surat = 0;
  Future<BookMark> getBookMark() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    ayat = preferences.getInt('indeksAyat') ?? 0;
    surat = preferences.getInt('indeksSurah') ?? 0;
    return BookMark(indeksSurat: surat, indeksAyat: ayat);
  }

  Future<void> setBookMark(BookMark bookMark) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('indeksAyat', bookMark.indeksAyat);
    preferences.setInt('indeksSurah', bookMark.indeksSurat);
    ayat = bookMark.indeksAyat;
    surat = bookMark.indeksSurat;
    notifyListeners();
  }
}
