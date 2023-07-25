class Maternidad {
final int? id;
final String codigo;
final String arete;
final String fechaIngreso;
final String fechaSalida;
final String raza;

Maternidad(
  {
    this.id,
    required this.codigo,
    required this.arete,
    required this.fechaIngreso,
    required this.fechaSalida,
    required this.raza,
  }
);
factory Maternidad.fromMap(Map<String, dynamic>data) => Maternidad(
  id: data['id'], 
  codigo: data['codigo'],
  arete: data['arete'],
  fechaIngreso: data['fechaIngreso'],
  fechaSalida: data['fechaSalida'],
  raza: data['raza'],
);
Map<String, dynamic> toMap() =>
{'id': id, 'codigo':codigo, 'arete':arete, 'fechaIngreso':fechaIngreso, 'fechaSalida':fechaSalida, 'raza':raza};

  delete(Maternidad Maternidad) {}
}