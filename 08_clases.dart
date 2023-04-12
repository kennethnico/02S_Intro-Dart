void main(){
  //El 95%> en flutter son clases
  final wolverine = Hero('Logan', 'Regeneración');
  print(wolverine);
  print(wolverine.power);
  print(wolverine.name);
}

class Hero{
  String name;
  String power;
  Hero(this.name,this.power);
  /*
  Hero(String pName, String pPower){
    this.name = pName;
    this.power = pPower;
  }
  */
}