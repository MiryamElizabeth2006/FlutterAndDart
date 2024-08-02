class Mensaje{
  void saludar(String nombre, String apellido, String apodo){
    print("Hola $nombre $apellido, alias $apodo");
  }

  void darBienvenida(String nombre, String apellido, String? apodo){
    print("Hola $nombre $apellido, alias $apodo");
  }

  void despedirse({String nombre="", String apellido="", String? apodo}){
    print("Adios $nombre $apellido, alias $apodo");
  }

  void animar({required String nombre, required String apellido, String? apodo}){
    print("Adios $nombre $apellido, alias $apodo");
  }
}

void main(){
  final msg=Mensaje();
  msg.saludar("Juan", "Perez", "");
  msg.darBienvenida("Juan", "Perez", null);
  msg.darBienvenida("Juan", "Perez", "el CHINO");
  msg.despedirse(apodo:"crack", nombre:"Juan");
  msg.animar(nombre: "Dolores", apellido: "Sanchez", apodo: "lola");
}