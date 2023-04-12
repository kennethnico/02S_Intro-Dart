void main(){
  //dynamic == null Es nulo por defecto
  //Null safety, si una variable es nula advierte que podría ser nula
  final String pokemon ="Ditto";
  final int hp = 100;
  final bool isAlive = true; //Null safety
  final List<String> abilities = ["impostor"];
  final sprites = <String>['ditto/front.png','ditto/back.png'];

  dynamic errorMessage  = "Hola";
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6,7];
  errorMessage = {1,2,3,4,5,6,7};
  errorMessage = () => true;
  errorMessage = null;

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}