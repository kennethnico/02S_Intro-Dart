/*Mixins
Lectura recomendada https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
Ejercicio con Mixins
 */
//Clase abstracta
abstract class Animal{}
abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

abstract class Volador{
  void volar()=> print('Estoy volando');
}
abstract class Caminante{
  void caminar()=> print('Estoy caminando');
}
abstract class Nadador{
  void nadar()=> print('Estoy nadando');
}

//mixins
//Mamifero
class Delfin extends Mamifero with Nadador{}
class Murcielado extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}
//Aves
class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador, Caminante, Nadador{}
//Pez
class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main(){
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielado();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.volar();
  namor.caminar();
  namor.nadar();
}
