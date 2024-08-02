class Libro{
  String ISBN;
  String titulo;
  int? numeroPaginas;
  String? descripcion;

  Libro(this.ISBN, this.titulo, int? numeroPaginas, String? descripcion){
    this.numeroPaginas = numeroPaginas;
    this.descripcion = descripcion;
  }
}

void main(){
  final libro1 = Libro("123456789", "El señor de los anillos", 58, "Ficcion");
  final libro2 = Libro("987654321", "El principito", null, null);

  print("Libro 1");
  print('ISBM: ${libro1.ISBN}');
  print('Titulo: ${libro1.titulo}');
  print('Numero de paginas: ${libro1.numeroPaginas}');
  print('Descripcion: ${libro1.descripcion}');

  print("Libro 2");
  print('ISBM: ${libro2.ISBN}');
  print('Titulo: ${libro2.titulo}');
  print('Numero de paginas: ${libro2.numeroPaginas}');
  print('Descripcion: ${libro2.descripcion}');
}