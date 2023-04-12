void main(){
  //El 95%> en flutter son clases
  final wolverine = Hero(name: 'Logan');
  print(wolverine);
  print(wolverine.power);
  print(wolverine.name);
}

class Hero{
  String name;
  String power;
  Hero({
    required this.name,
    this.power = 'Sin poder'
  });
//Sobreescribir un método, es recomendable indicar que se está sobreescribiendo el código
  @override
  String toString(){
    return '$name - $power';
  }
}