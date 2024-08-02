class Producto{
  String codigo="";
  String nombre = "";
  String descripcion="";
  bool activo=true;
  double precio=0.0;
  int? stock;
}

void main() {
  var p1 = new Producto();
  p1.codigo = "P001";
  p1.nombre = "Jamón";
  p1.descripcion = "Jamón serrano";
  p1.activo=false;
  p1.precio = 15.99;
  p1.stock = 100;

  print("PRODUCTO 1: ${p1.codigo}");
  print("Nombre: ${p1.nombre}");
  print("Descripción: ${p1.descripcion}");
  print("Activo: ${p1.activo ? "Sí" : "No"}");
  print("Precio: ${p1.precio} dolares");
  print("Stock: ${p1.stock}");


  var p2 = Producto();
  p2.codigo = "P002";
  p2.nombre = "Queso";
  p2.descripcion = "Queso manchego";
  p2.activo=true;
  p2.precio = 12.99;
  p2.stock = 50;

  print("PRODUCTO 2: ${p2.codigo}");
  print("Nombre: ${p2.nombre}");
  print("Descripción: ${p2.descripcion}");
  print("Activo: ${p2.activo ? "Sí" : "No"}");
  print("Precio: ${p2.precio} dolares");
  print("Stock: ${p2.stock}");


  var p3 = Producto();
  p3.codigo = "P003";
  p3.nombre = "Vino";
  p3.descripcion = "Vino tinto";
  p3.activo=false;
  p3.precio = 20.99;
  p3.stock = 0;

  print("PRODUCTO 3: ${p3.codigo}");
  print("Nombre: ${p3.nombre}");
  print("Descripción: ${p3.descripcion}");
  print("Activo: ${p3.activo ? "Sí" : "No"}");
  print("Precio: ${p3.precio} dolares");
  print("Stock: ${p3.stock}");
}