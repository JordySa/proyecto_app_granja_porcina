class Engorde {
  final int? id;
  final String edad;
  final String peso;
  final String arete;
  final String alimento;
  final String raza;
  final String descripcion;

  Engorde({
    this.id,
    required this.edad,
    required this.peso,
    required this.arete,
    required this.alimento,
    required this.raza,
    required this.descripcion,

  });
   factory Engorde.fromMap(Map<String, dynamic> data) => Engorde(
      id: data['id'],
      edad: data['edad'],
      peso: data['peso'],
      arete: data['arete'],
      alimento: data['alimento'],
      raza: data['raza'],
      descripcion: data['descripcion']);
      

  Map<String, dynamic> toMap() => {
        'id': id,
        'edad': edad,
        'peso': peso,
        'arete': arete,
        'alimento': alimento,
        'raza': raza,
        'descripcion': descripcion,
      };
}
