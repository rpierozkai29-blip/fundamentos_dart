void main() {
  Map<String, dynamic> alumnos = {
    "nombre": "Ana Torres",
    "edad": 19,
    "promedio": 15.5,
    "aprobado": "True"
  };
  
  List<String> cursos = [
    "Dart",
    "Base de Datos",
    "Programación Móvil"
  ];
  
  print("========== FICHA DEL ESTUDIANTE ==========");
  print("Nombre: ${alumnos["nombre"]} \n" +
        "Edad: ${alumnos["edad"]} \n" +
        "Promedio: ${alumnos["promedio"]} \n" +
        "Aprobado: ${alumnos["aprobado"]}");
  print("Cursos:  ${cursos}");
}
