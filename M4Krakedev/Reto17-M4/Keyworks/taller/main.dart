import 'taller.dart';

void main() {
  Empleado carlos = Empleado("Carlos");

  carlos.cambiarMensajeDelTaller(
    "¡Hola! Bienvenidos al mejor taller de la ciudad.",
  );

  Vehiculo v1 = Vehiculo("ABC-123");
  Vehiculo v2 = Vehiculo("XYZ-789");

  v1.registrarDiagnostico("Cambio de aceite");
  v2.registrarDiagnostico("Revisión de frenos");

  v1.extralnfo = "Cliente frecuente";
  v2.extralnfo = 129.99;

  v1.resumen();
  v2.resumen();

  print("Total de vehículos reparados: ${Taller.obtenerReparaciones()}");
}
