//Aserciones => Reglas de negocio para que en desarrollo se cumplan las normas establecidas
void main(){
  final mySquare = Square(side: -10);
  //mySquare.side = -5;
  //print('Area: ${mySquare.calculateArea()}');
  print('Area: ${mySquare.area}');
}

class Square{
  double _side; //side * side
  //Constructor=>
  Square({required double side})
      : assert(side>=0,'Side must be >=0'),
        _side = side;
  double calculateArea(){
    return _side*_side;
  }
  double get area{
    return _side * _side;
  }
  set side(double value){
    print('setting new value $value');
    if(value<0)throw 'value must be greater than 0';
    _side = value;
  }
}