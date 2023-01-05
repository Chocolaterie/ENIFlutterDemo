import 'package:email_validator/email_validator.dart';

class EniValidator {
  static String? validateEmail(String value) {
    // Utiliser le validateur d'un package
    if (!EmailValidator.validate(value!)) {
      return "Veuillez saisir un email valide";
    }
    /*
    // Si vide
    if (value!.isEmpty) {
      return "Veuillez saisir un email";
    }
    // Si je n'ai pas 6 char
    if (value!.length < 6) {
      return "Veuillez saisir un email d'au moins 6 caractères";
    }
    */
    return null;
  }
}
