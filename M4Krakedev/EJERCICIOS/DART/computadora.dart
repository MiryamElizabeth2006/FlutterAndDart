import 'dispositivo_electronico.dart';

class Computadora extends DispositivoElectronico{
  int capacidadDisco;

  Computadora(this.capacidadDisco, super.codigo, super.marca);

  @override
  void imprimir() {
    print('Código: $codigo, Marca: $marca, Capacidad del Disco: $capacidadDisco GB');
  }

  @override
  void registrarInventario() {
    print('Registrando inventario--->>> Código: $codigo, Marca: $marca, Capacidad del Disco: $capacidadDisco GB');
  }

}

void main(){
  final compu=Computadora(415, 4578, 'HP');
  compu.imprimir();
  compu.registrarInventario();
}