class Taller {
  static const String nombre = 'El Buen Volante';
  static String mensajeGeneral = "Bienvenido al talle";
  static int _totalReparaciones = 0;

  static void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  static void incrementarContador() {
    _totalReparaciones++;
  }

  static int obtenerReparaciones() {
    return _totalReparaciones;
  }
}

class Empleado {
  String nombre;

  Empleado(this.nombre);

  void cambiarMensajeDelTaller(String nuevoMensaje) {
    Taller.cambiarMensaje(nuevoMensaje);
  }
}

class Vehiculo {
  String placa;
  String? diagnostico;
  String estado = "Pendiente";
  dynamic extralnfo;

  Vehiculo(this.placa);

  void registrarDiagnostico(String texto) {
    diagnostico = texto;
    estado = "Reparado";
    Taller.incrementarContador();
  }

  void actualizarMensajeDelTaller(String texto) {
    Taller.cambiarMensaje(texto);
  }

  void resumen() {
    print("------ Resumen del Vehículo ------");
    print("Placa: $placa");
    print("Diagnóstico: ${diagnostico ?? 'No registrado'}");
    print("Estado: $estado");
    print("Info extra: $extralnfo");
    print("Mensaje del taller: ${Taller.mensajeGeneral}");
    print("Nombre del taller: ${Taller.nombre}");
  }
}
