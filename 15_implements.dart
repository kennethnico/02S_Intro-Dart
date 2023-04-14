//Implements
/*Declarar de manera explícita los métodos de una clase abstracta*/
void main(){
  //final windPlant = EnergyPlant(); //No se puede instanciar una clase abstracta
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('Wind: ${chargePhone(windPlant)}');
  print('Nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant){
  if(plant.energyLeft <10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

//Molde definido
enum PlanType { nuclear, wind, water}
abstract class EnergyPlant{
  double energyLeft; //Energía restante
  final PlanType type; //Nuclear, Wind or Water
  //Constructor
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  void consumeEnergy(double amount);
}

class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft;
  @override
  final PlanType type = PlanType.nuclear;
  NuclearPlant({required this.energyLeft});
  @override
  void consumeEnergy(double amount){
    energyLeft -= {amount*0.5} as double;
  }
}

//Extends
class WindPlant extends EnergyPlant{
  WindPlant({ required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}