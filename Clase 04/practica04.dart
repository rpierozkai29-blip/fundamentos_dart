//Ejercicio 01:

Future<String> descargarArchivo() {
  return Future.delayed(
    Duration(seconds: 4), 
    () => 'Archivo descargado correctamente'
  );
}

void main() {
  print('Iniciando descarga...');
  
  descargarArchivo().then((mensaje) {
    print(mensaje);
  });
  
  print('Puede continuar utilizando el sistema');
}

//Ejercicio 02:

Future<String> buscarCurso() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Desarrollo de Aplicaciones Móviles';
}

void main() async {
  print('Consultando curso...');
  String curso = await buscarCurso();
  print('Curso encontrado: $curso');
  print('Consulta finalizada');
}

//Ejercicio 03:

Future<Map<String, dynamic>> buscarVehiculo(int id) async {
  await Future.delayed(Duration(seconds: 2));
  return {
    'id': id,
    'marca': 'Toyota',
    'modelo': 'Corolla Cross',
    'precio': 95000.0,
    'disponible': true,
    'anio': 2024, 
  };
}

void main() async {
  print('Consultando vehículo...\n');
  
  Map<String, dynamic> vehiculo = await buscarVehiculo(10);
  
  print('Vehículo encontrado');
  print('Marca: ${vehiculo['marca']}');
  print('Modelo: ${vehiculo['modelo']}');
  print('Precio: S/ ${vehiculo['precio']}');
  print('Disponible: ${vehiculo['disponible']}');
  print('Año: ${vehiculo['anio']}'); 
}

//Ejercicio 04:

Future<String> buscarLibro(int id) async {
  await Future.delayed(Duration(seconds: 1));
  
  Map<int, String> libros = {
    1: 'Programación en Dart',
    2: 'Fundamentos de Base de Datos',
    3: 'Desarrollo Web',
  };

  if (libros.containsKey(id)) {
    return libros[id]!;
  } else {
    throw Exception('Libro no encontrado');
  }
}

void main() async {
  print('Buscando libro...');
  
  try {
    String libro = await buscarLibro(5);
    print('Libro encontrado: $libro');
  } catch (error) {
    print('Error: ${error.toString().replaceAll('Exception: ', '')}');
  } finally {
    print('El programa continúa funcionando');
  }
}

//Ejercicio 05:

Future<String> validarAcceso(String codigo, String password) {
  return Future.delayed(Duration(seconds: 2), () {
    if (codigo == 'EST2026' && password == 'dart123') {
      return 'Acceso permitido';
    } else {
      throw Exception('Credenciales incorrectas');
    }
  });
}

void main() {
  validarAcceso('EST2026', 'clave')
    .then((resultado) {
      print(resultado);
    })
    .catchError((error) {
      print('Error: ${error.toString().replaceAll('Exception: ', '')}');
    });
}

//Ejercicio 06:

Future<String> buscarHabitacion(int numero) async {
  await Future.delayed(Duration(seconds: 1));
  if (numero == 205) {
    return 'Habitación 205';
  } else {
    throw Exception('Habitación no encontrada');
  }
}

Future<bool> verificarDisponibilidad(String habitacion) async {
  await Future.delayed(Duration(seconds: 1));
  bool disponible = true; 
  if (disponible) {
    return true;
  } else {
    throw Exception('Habitación no disponible');
  }
}

Future<String> confirmarReserva(String habitacion) async {
  await Future.delayed(Duration(seconds: 1));
  bool exito = true; 
  if (exito) {
    return 'Reserva confirmada correctamente';
  } else {
    throw Exception('No se pudo confirmar la reserva');
  }
}

void main() async {
  print('======== SISTEMA DE RESERVAS ========');
  
  try {
    print('Buscando habitación...');
    String habitacion = await buscarHabitacion(205);
    print('Habitación encontrada: $habitacion');

    print('Verificando disponibilidad...');
    bool disponible = await verificarDisponibilidad(habitacion);
    if (disponible) {
      print('Habitación disponible');
    }

    print('Confirmando reserva...');
    String confirmacion = await confirmarReserva(habitacion);
    print(confirmacion);

    print('========= RESERVA FINALIZADA ========');
  } catch (e) {
    print('Error: ${e.toString().replaceAll('Exception: ', '')}');
  }
}

//Ejercicio 07:

Future<String> obtenerDocente() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Luis Ramírez';
}

Future<String> obtenerAula() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Laboratorio 302';
}

void main() async {
  final resultados = await Future.wait([
    obtenerDocente(),
    obtenerAula(),
  ]);

  print('Docente: ${resultados[0]}');
  print('Aula: ${resultados[1]}');
}