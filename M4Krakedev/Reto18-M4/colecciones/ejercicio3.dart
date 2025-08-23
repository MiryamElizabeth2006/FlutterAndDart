class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);

  @override
  String toString() {
    return "$titulo ($anioEstreno)";
  }
}

void ejecutarEjercicio3() {
  // Catálogo de películas por plataforma
  Map<String, List<Pelicula>> catalogoStreaming = {
    "Netflix": [
      Pelicula("Stranger Things", 2016),
      Pelicula("The Crown", 2016),
    ],
    "HBO": [
      Pelicula("Game of Thrones", 2011),
      Pelicula("Chernobyl", 2019),
    ],
    "Disney+": [
      Pelicula("Luca", 2021),
      Pelicula("Encanto", 2021),
    ],
  };

  // Imprimir títulos de Netflix
  print("Películas en Netflix:");
  catalogoStreaming["Netflix"]?.forEach((p) => print("- ${p.titulo}"));

  // Agregar película a Disney+
  catalogoStreaming["Disney+"]?.add(Pelicula("Elemental", 2023));

  // Cambiar año de estreno en HBO
  catalogoStreaming["HBO"]?[0].anioEstreno = 2012; // Cambié Game of Thrones a 2012

  // Eliminar película de Netflix
  catalogoStreaming["Netflix"]?.removeWhere((p) => p.titulo == "The Crown");

  // Recorrer todo el mapa
  catalogoStreaming.forEach((plataforma, peliculas) {
    print("Plataforma: $plataforma");
    for (var pelicula in peliculas) {
      print("- $pelicula");
    }
  });
}
