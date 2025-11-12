void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
      throw Exception("Le mot de passe doit contenir au moins 6 caractères !");
  }
   print("Mot de passe valide.");
}
void main() {
  try {

    String motdepasse = "123";
    verifierMotdepasse(motdepasse);
  }
    catch (e) {
      print("Erreur : $e");
  
    } finally {
      print("Fin de la vérification du mot de passe.");
    }
}
