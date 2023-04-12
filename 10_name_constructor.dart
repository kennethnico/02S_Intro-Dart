void main(){
  final Map<String, dynamic> rawJson ={
    'name':'Peter Parker',
    'power':'Trepar paredes',
    'isAlive':true
  };
  /*final ironman = Hero(
    isAlive: false,
    power: 'Money',
    name: 'Tony Stark'
  );
  */
  final myHero = Hero.fromJson(rawJson);
  print(myHero);
}

class Hero{
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson(Map<String,dynamic> json)
    : name = json['name'] ?? 'No name found', // ?? Por si no lo encuentra NullSafety, contemplar la posibilidad del Null
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';
  @override
  String toString(){
    return "$name, $power, ${isAlive ? "YES!":"Nope"}";
  }
}