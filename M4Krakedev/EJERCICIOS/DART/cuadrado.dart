import 'figura.dart';

class Cuadrado extends Figura{
  const Cuadrado(this.lado,super.color);
  final double lado;

  @override
  double calcularArea(){
    return lado*lado;
  }
  
  @override
  double calcularPerimetro() {
    return lado*4;
  }
}

  main(){
    final cuadrado=const Cuadrado(10,"rojo");
    final area1=cuadrado.calcularArea();
    final perimetro1=cuadrado.calcularPerimetro();
    print("area: $area1, perimetro: $perimetro1");
  }