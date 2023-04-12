void main(){
  final pokemon = <String,dynamic>{
    'name':'Ditto',
    'hp':180,
    'isAlive':true,
    'abilities':<String>['impostor'],
    'sprites':{
      1:'ditto/front.png',
      2:'ditto/back.png'
    }
  };
  /* Las keys no siempre deben ser String
  final  pokemons ={
    1:'ABC',
    2:'DEF',
    3:'123'
  };
  */
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}