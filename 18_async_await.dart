/*Async y Await
* */
void main() async{
  print('Inicio del Programa');
  try {
  final value = await httpGet('https://srae.poderjudicial.gob.mx');
  print(value);
  }catch(err)
  {
    print('Tenemos un error: $err');
  }
  print('Fin del Programa');
}
Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 1));
  throw 'Error en la petición';
  //return 'Tenemos un valor de la petición';
}