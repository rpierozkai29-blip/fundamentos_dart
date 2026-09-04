void main() {
  Map<String, String> alumnos = {
    "nombre": "Carlos",
    "edad": "24",
    "nota": "20"
  };

  //Lista completa
  print(alumnos);
  //Dato especifico
  print(alumnos["nombre"]);
  //Declarando
  print("Alumno: ${alumnos['nombre']}");
}