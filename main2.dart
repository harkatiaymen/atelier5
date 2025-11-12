
import 'dart:io';
void main() {
  try {
    stdout.write("entrez votre age : ");
    String? saisie = stdin.readLineSync();

    int age = int.parse(saisie!);
    print("Votre âge est : $age ans");


  } on FormatException catch (e) {
    print("Erreur de format : veuillez entrer un nombre valide !");
    print("Détails de l'erreur : $e");
  } finally {
    print("Fin d'opération");
  }
}  