void main(){
  print(greetEveryone());
  print('Suma ${addTwoNumbersArrow(10,20)}');
  print('GreetPerson ${greetPerson(name: 'Kennnnnnnneth', message: 'Hey,')}');
}

//retorno de tipo Dynamic
greetEveryone(){
  return 'Hello everyone';
}
String greetEveryoneArrow() => 'Hello everyone';

//Retorno de tipo entero Int
int addTwoNumbers(int a,int b){
  return a+b;
}
int addTwoNumbersArrow(int a, int b) => a + b;
int addTwoNumbersOptional(int a, [int b = 0 ]) {
  //b = b ?? 0; //B tiene un valor? De lo contrario el valor será 0
  //b ??= 0;
  return a + b;
}

String greetPerson({required String name, String message = 'Hola,'}){
  return '$message Kenneth';
}

//Parametros posicionales, por nombre, opcionales