void ejecutarEjercicio1() {
  // Lista de comidas favoritas
  List<String> comidasFavoritas = ["Pizza", "Hamburguesa", "Ensalada", "Sushi", "Pasta"];
  print("Comidas favoritas iniciales: $comidasFavoritas");

  // Agregar una comida
  comidasFavoritas.add("Tacos");
  print("Después de agregar tacos: $comidasFavoritas");

  // Eliminar una comida
  comidasFavoritas.remove("Ensalada");
  print("Después de eliminar ensalada: $comidasFavoritas");

  // Imprimir comida en la posición 2
  print("Comida en posición 2: ${comidasFavoritas[2]}");

  // Menú semanal: desayuno, almuerzo, cena
  List<List<String>> menuSemanal = [
    ["Café", "Arroz con pollo", "Sopa"],     // Lunes
    ["Jugo", "Hamburguesa", "Pizza"],        // Martes
    ["Leche", "Pasta", "Ensalada"],          // Miércoles
    ["Té", "Sushi", "Ramen"],                // Jueves
    ["Café", "Tacos", "Pescado"],            // Viernes
    ["Agua", "Sandwich", "Pollo asado"],     // Sábado
    ["Cereal", "Ensalada César", "Pizza"],   // Domingo
  ];

  // Imprimir almuerzo del martes (índice 1)
  print("Almuerzo del martes: ${menuSemanal[1][1]}");

  // Cambiar la cena del viernes (índice 4, cena es índice 2)
  menuSemanal[4][2] = "Lasagna";
  print("Cena del viernes cambiada a Lasagna");

  // Recorrer menú semanal
  List<String> dias = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"];
  for (int i = 0; i < menuSemanal.length; i++) {
    print("${dias[i]}: ${menuSemanal[i]}");
  }
}
