import 'dart:typed_data';

class Reproduccion {
  int? id;
  String code;
  String number;
  String age;
  String weight;
  String race;
  final Uint8List photo;
  Reproduccion({
    this.id,
    required this.code,
    required this.number,
    required this.age,
    required this.weight,
    required this.race,
    required this.photo,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'number': number,
      'age': age,
      'weight': weight,
      'race': race,
      'photo': photo,
    };
  }

  factory Reproduccion.fromMap(Map<String, dynamic> map) {
    return Reproduccion(
      id: map['id'],
      code: map['code'],
      number: map['number'],
      age: map['age'],
      weight: map['weight'],
      race: map['race'],
      photo: map['photo'],
    );
  }
}
