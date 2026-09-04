// Funciones avanzadas

// Future

//Future<String> prepararPedido() {
//  return Future.delayed(Duration(seconds: 3), () => "Pedido Preparado");
//}

//void main() {
//  print("Pedido Recibido");
//  prepararPedido().then((pedido) {
//    print(pedido);
//  });
//  print("El mozo sigue trabajando");
//}

//future async y amit
Future<String> buscarPersona() async {
  await future.delayed(Duration(seconds: 3));
  return "Daniel Sanchez";
}

void main() async {
  print("Consulta Iniciada");
  String persona = await buscarPersona();
  print("Persona encontrada : $persona");
  print("Consulta Finalizada");
}