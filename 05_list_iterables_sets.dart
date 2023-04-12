void main(){
  //Listado [] llaves cuadradas
  final numbers = [1,2,3,4,5,5,6,7,7,8,9,9,10];
  print('List original: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reverse: ${numbers.reversed}');

  final reversedNumber = numbers.reversed; //Reversed devuelve un iterable
  print('Iterable: $reversedNumber');
  print('Lista: ${reversedNumber.toList()}'); //Para recuperar el formato de listado original => List[]
  print('Lista: ${reversedNumber.toSet()}'); //Set devuelve un listado de valores únicos => Set{}

  final numbersGreaterThan5 = numbers.where((element) {
    return element > 5;
  }); //Devuelve un iterable
  print(' >5 Iterable: $numbersGreaterThan5');
  print(' >5 Set: ${numbersGreaterThan5.toSet()}'); //Set {}
}