/*Future
* Representa principalmente el acuerdo de una operación asincrona
* Es una promesa de que pronto tendrás un valor
* La promesa puede fallar y hay que manejar una excepción*/
void main(){
  print('Inicio del Programa');
  httpGet('https://srae.poderjudicial.gob.mx')
      .then(
          (value) {
            print(value);
          }).catchError((err){
            print('Error: $err');
          });
  print('Fin del Programa');
}

//Especificar que es un objeto de tipo Future
Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1),(){
    throw 'Error en la petición HTTP';
    return 'Respuesta de la petición http';
  });
}