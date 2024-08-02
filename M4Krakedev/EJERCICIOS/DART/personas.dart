class Persona{
  String? nombre;
  int edad=0;
  double? estatura;

  Persona(String nombre, int edad, double estatura){
    this.nombre = nombre;
    this.edad = edad;
    this.estatura = estatura;
  }
}

void main(){
  final p=Persona("Juanito", 40, 1.78);
  print("Nombre: ${p.nombre}");
  print("Edad ${p.edad}");
  print("Estatura ${p.estatura}");
}