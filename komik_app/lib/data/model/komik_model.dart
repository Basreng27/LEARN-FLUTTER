// immport pada pubspec.yaml dio dan flutter_block

// class container / penampung data
class DataKomik {
  final List<Komik> data;

  DataKomik({required this.data});

  factory DataKomik.fromJson(Map<String, dynamic> json) => DataKomik(
        // memasukan data kedalam komik
        data: List.from(json['data'].map((komik) => Komik.fromModel(komik))),
      );
}

class Komik {
  // declarated variable
  // final String id;
  final String nama;
  // final int chapter;
  // final DateTime lastUpdate;
  // final String idGenre;

  // interface
  Komik({
    // required this.id,
    required this.nama,
    // required this.chapter,
    // required this.lastUpdate,
    // required this.idGenre,
  });

  // factory
  // meng konversi data dari json ke model
  factory Komik.fromModel(Map<String, dynamic> json) => Komik(
        // data table
        // id: json['id'],
        nama: json['nama'],
        // chapter: json['chapter'],
        // lastUpdate: json['last_update'],
        // idGenre: json['id_genre'],
      );
}
