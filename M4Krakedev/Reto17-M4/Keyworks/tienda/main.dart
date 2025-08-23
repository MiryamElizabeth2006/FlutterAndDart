import 'tienda.dart';

void main() {
  Producto p1 = Producto("P001");
  Producto p2 = Producto("P002");

  p1.registrarVenta("Camisa de algodón", 15.50, "Talla M, color azul");
  p2.registrarVenta(
    "Botella térmica",
    10.99,
    true,
  ); // ejemplo de observación tipo booleano

  Tienda.cambiarAnuncio("¡Ofertas especiales por tiempo limitado!");

  p1.resumen();
  p2.resumen();

  print("Total de productos vendidos: ${Tienda.obtenerVentas()}");
}
