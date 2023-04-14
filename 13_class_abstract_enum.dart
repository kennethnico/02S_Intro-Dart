//Clases abstractas y enumeraciones
/*
* Uso real y Ejemplos
* En general una clase abstracta es un molde que funciona para crear otros moldes.
* El molde inicial solo funciona para hacer otros moldes
* Una clase abstracta no se puede instanciar por si misma
* Su objetivo es aplicar diferentes patrones de arquitectura*/
void main(){
  //final windPlant = EnergyPlant(); //No se puede instanciar una clase abstracta
}
enum PlanType { nuclear, wind, water}
abstract class EnergyPlant{
  double energyLeft; //Energía restante
  PlanType type; //Nuclear, Wind or Water
  //Constructor
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  void consumeEnergy(double amount);
}