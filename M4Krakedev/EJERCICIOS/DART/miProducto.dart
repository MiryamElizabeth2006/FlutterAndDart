class MiProducto{
  String codigo;
  double precio;
  String? descripcion;

  MiProducto(this.codigo, this.precio, this.descripcion);

  MiProducto.generico():codigo="", precio=0.0;
}