class MotdepasseCourtException implements Exception {
  @override
  String toString() => "Erreur : Le mot de passe doit contenir au moins 6 caractères !";


}
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepasseCourtException();
  }
  print("Mot de passe valide.");

}
void main(){
  try {
    String motdepasse = "123";
    verifierMotdepasse(motdepasse);
  } on MotdepasseCourtException catch (e) {
    print(e);
  } finally {
    print("Fin de la vérification du mot de passe.");

  }
}