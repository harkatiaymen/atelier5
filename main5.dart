import 'dart:io';

class NombreNegatifException implements Exception {
  @override
  String toString() => "Erreur : le nombre ne peut pas être négatif !";

}
void main() {
  try {
    stdout.write("Entrez un nombre : ");
    String? saisie = stdin.readLineSync();

    int nombre = int.parse(saisie!);

    if (nombre < 0) {
      throw NombreNegatifException();
    }
    print("Le carré du nombre est : ${nombre * nombre}");

  } on NombreNegatifException catch (e) {
    print(e);
  } on FormatException {
    print("Erreur : veuillez entrer un nombre valide !");
  } finally {
    print("Fin de l'opération.");
  }
    



}

