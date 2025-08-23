class Tienda {
  static const String nombre = "Tienda La Esquinita";
  static String anuncio = "¡Bienvenidos a nuestra tienda!";
  static int _productosVendidos = 0;

  static void cambiarAnuncio(String nuevoAnuncio) {
    anuncio = nuevoAnuncio;
  }

  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }
}

class Producto {
  String codigo;
  String? descripcion;
  double? precio;
  dynamic observacion;

  Producto(this.codigo);

  void registrarVenta(
    String nuevaDescripcion,
    double nuevoPrecio,
    dynamic nuevaObservacion,
  ) {
    descripcion = nuevaDescripcion;
    precio = nuevoPrecio;
    observacion = nuevaObservacion;
    Tienda.aumentarVentas();
  }

  void resumen() {
    print("------ Resumen del Producto ------");
    print("Código: $codigo");
    print("Descripción: ${descripcion ?? 'No definida'}");
    print(
      "Precio: ${precio != null ? '\$${precio!.toStringAsFixed(2)}' : 'No definido'}",
    );
    print("Observación: $observacion");
    print("Nombre de la tienda: ${Tienda.nombre}");
    print("Anuncio actual: ${Tienda.anuncio}");
  }
}
