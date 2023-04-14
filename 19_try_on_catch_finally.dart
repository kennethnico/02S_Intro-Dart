/*
* Try, On, catch y finally*/
void main() async{
  print('Inicio del Programa');
  try {
    final value = await httpGet('https://srae.poderjudicial.gob.mx');
    print('Éxito: $value');
  } on Exception catch(err){
    print('Tenemos un error: $err');
  } catch(err){
    print('Oops algo terrible pasó');
  }finally{ //Finalmente, sin importar el resultado
    print('Fin del Try-Catch');
  }
  print('Fin del Programa');
}
Future<String> httpGet(String url) async{
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
  //return 'Tenemos un valor de la petición';
}