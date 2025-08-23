Future<void> cocinarArroz() async {
  print('Cocinando arroz...');
  await Future.delayed(Duration(seconds: 5));
  print('Arroz cocido');
}

void hacerTarea() {
  print('Haciendo tarea mientras se cocina el arroz...');
}

Future<void> main() async {
  var coccion = cocinarArroz();

  hacerTarea();

  await coccion;

  print('Terminé todo');
}
