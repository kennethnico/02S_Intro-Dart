/*
* Streams
* Pueden ser retornados y usados como objetos, funciones o métodos,
* son un flujo de información que puede estar emitiendo valores periódicamente,
* una única vez, o nunca.
* Podría verse como una manguera conectada a un tubo de agua
* Cuando abres el tubo  el agua fluye, cada gota sería una emisión
* de información.*/
void main(){
  emitNumbers().listen((value) {print("Stream value: $value");});
}
Stream<int> emitNumbers()=> Stream.periodic(const Duration(seconds: 1), (value){
        //print('Desde periodic: $value');
        return value;
      }).take(5); //Solo toma 5 emisiones y cierra el Stream
