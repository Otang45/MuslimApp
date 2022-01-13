// ignore_for_file: unnecessary_new

class ResponseSurat {
  late String status;
  late Query? query;
  late List<Hasil> hasil;

  ResponseSurat({required this.status, this.query, required this.hasil});

  ResponseSurat.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    query = json['query'] != null ? new Query.fromJson(json['query']) : null;
    if (json['hasil'] != null) {
      hasil = <Hasil>[];
      json['hasil'].forEach((v) {
        hasil.add(new Hasil.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (query != null) {
      data['query'] = query!.toJson();
    }
    data['hasil'] = hasil.map((v) => v.toJson()).toList();
    return data;
  }
}

class Query {
  late String format;
  late String surat;
  Query({required this.format, required this.surat});

  Query.fromJson(Map<String, dynamic> json) {
    format = json['format'];
    surat = json['surat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['format'] = format;
    data['surat'] = surat;
    return data;
  }
}

class Hasil {
  late String nomor;
  late String nama;
  late String asma;
  late String name;
  late String start;
  late String ayat;
  late String type;
  late String urut;
  late String rukuk;
  late String arti;
  late String keterangan;

  Hasil(
      {required this.nomor,
      required this.nama,
      required this.asma,
      required this.name,
      required this.start,
      required this.ayat,
      required this.type,
      required this.urut,
      required this.rukuk,
      required this.arti,
      required this.keterangan});

  Hasil.fromJson(Map<String, dynamic> json) {
    nomor = json['nomor'];
    nama = json['nama'];
    asma = json['asma'];
    name = json['name'];
    start = json['start'];
    ayat = json['ayat'];
    type = json['type'];
    urut = json['urut'];
    rukuk = json['rukuk'];
    arti = json['arti'];
    keterangan = json['keterangan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['nomor'] = nomor;
    data['nama'] = nama;
    data['asma'] = asma;
    data['name'] = name;
    data['start'] = start;
    data['ayat'] = ayat;
    data['type'] = type;
    data['urut'] = urut;
    data['rukuk'] = rukuk;
    data['arti'] = arti;
    data['keterangan'] = keterangan;
    return data;
  }
}
