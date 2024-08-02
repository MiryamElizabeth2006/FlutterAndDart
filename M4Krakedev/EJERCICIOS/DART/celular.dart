import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico{
  
  Celular(super.codigo, super.marca);

   @override
  void imprimir() {
    print('Código: $codigo, Marca: $marca');
  }

  @override
  void registrarInventario() {
    print('Registrando inventario: Código: $codigo, Marca: $marca');
  }
}

void main(){
  final celu=Celular(8745, 'Samsung');
  celu.imprimir();
  celu.registrarInventario();
}