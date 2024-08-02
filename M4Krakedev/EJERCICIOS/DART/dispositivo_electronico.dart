
abstract class DispositivoElectronico{
  int codigo;
  String marca;

  DispositivoElectronico(this.codigo, this.marca);

  void imprimir(){
    print('Codigo: $codigo, Marca: $marca');
  }

  void registrarInventario(); //metodo abstracto
}