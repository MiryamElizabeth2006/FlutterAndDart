void ejecutarEjercicio2() {
  // Mapa de jugadores con puntajes
  Map<String, int> puntajes = {
    "Carlos": 100,
    "Ana": 150,
    "Luis": 90,
    "Marta": 120,
  };

  print("Puntajes iniciales: $puntajes");

  // Mostrar nombres de jugadores
  print("Jugadores registrados: ${puntajes.keys}");

  // Imprimir puntaje de un jugador específico
  print("Puntaje de Ana: ${puntajes["Ana"]}");

  // Modificar puntaje
  puntajes["Luis"] = 110;
  print("Luis ahora tiene: ${puntajes["Luis"]}");

  // Agregar nuevo jugador
  puntajes["Pedro"] = 95;
  print("Agregado Pedro con puntaje: 95");

  // Eliminar jugador
  puntajes.remove("Carlos");
  print("Carlos eliminado.");

  // Mapa actualizado
  print("Mapa actualizado: $puntajes");
}
