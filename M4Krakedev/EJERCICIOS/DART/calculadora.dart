class Calcualdora {
  int sumar(int valor1, int valor2){
    return valor1 + valor2;
  }
}

void main(){
  Calcualdora calc = Calcualdora();
  var resultado=calc.sumar(10, 8);

  print("La suma es: ${resultado}");
}