Future<Map<String, dynamic>> buscarProducto() async {
  await Future.delayed(Duration(seconds: 2));
  return {
    "id": 1,
    "nombre": "papa blanca",
    "stock": 100,
    "precio": 1.5,
    "activo": false,
  };
}

void main () async {
  print("Buscando Producto");
  Map<String, dynamic> producto = await buscarProducto();
  
  print("Nombre: ${producto["nombre"]} \n" +
        "Precio: ${producto["precio"]} \n" +
        "Stock: ${producto["stock"]} \n" +
        "Activo: ${producto["activo"]}");
}

//segunda expclase
Future<String> buscarProductoById(int id) async {
  await Future.delayed(Duration(seconds: 2));
  
  if (id == 1) {
  return "Teclado Funcionando";
  }
  
  if (id == 2) {
  return "Teclado Funcionando";
  }
  throw Exception("Producto no Encontrado");
}

void main () async {
  try {
  
  print("Buscando Producto");
    String producto = await buscarProductoById(4);
    print("Producto: $producto");
  }
  catch (e) {
    print("Error $e");
  }
  
  print("El sistema sigue trabajando");
}