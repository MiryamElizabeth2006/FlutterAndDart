Future<void> descargarArchivo() async {
  print('Iniciando descarga del archivo...');
  await Future.delayed(Duration(seconds: 4));
  print('Archivo descargado');
}

void revisarCorreos() {
  print('Revisando correos mientras se descarga el archivo...');
}

Future<void> main() async {
  var descarga = descargarArchivo();

  revisarCorreos();

  await descarga;

  print('Todo listo');
}
