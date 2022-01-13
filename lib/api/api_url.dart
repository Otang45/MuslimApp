// ignore_for_file: constant_identifier_names
class ApiUrl {
  static const baseUrl = 'https://api.banghasan.com';
  static const surat = '$baseUrl/quran/format/json/surat';
  static const methodToday = 'today';
  static const methodWeek = 'this_week';
  static const methodMonth = 'this_month';
  static const OPEN_WEATHER_MAP = 'Put your api key';
  static Future<String> ayatRange(var nomor, var start, var end) async {
    return '$baseUrl/quran/format/json/surat/$nomor/ayat/$start-$end';
  }

  static Future<String> jadwalShalat(
    var method,
    var latitude,
    var longitude,
  ) async {
    return 'https://api.pray.zone/v2/times/$method.json?longitude=$longitude&latitude=$latitude';
  }
}
