//Extends
/**/
void main(){
  //final windPlant = EnergyPlant(); //No se puede instanciar una clase abstracta
  final windPlant = WindPlant(initialEnergy: 100);

  print('Wind: ${chargePhone(windPlant)}');
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
  PlanType type; //Nuclear, Wind or Water
  //Constructor
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  void consumeEnergy(double amount);
}
//Extends o implements
class WindPlant extends EnergyPlant{
  WindPlant({ required double initialEnergy})
  : super(energyLeft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}