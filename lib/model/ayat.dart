class Ayat {
  final String judul;
  final String ayat;
  final int jumlah;
  final String terjemahan;
  Ayat(
      {required this.judul,
      required this.ayat,
      this.jumlah = 1,
      required this.terjemahan});
}
