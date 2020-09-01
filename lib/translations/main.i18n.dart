import 'package:i18n_extension/i18n_extension.dart';

// Developed by Marcelo Glasberg (Aug 2019).
// For more info, see: https://pub.dartlang.org/packages/i18n_extension

extension Localization on String {
  //
  static var _t = Translations("en_us") +
      {
        "en_us": "You have pushed the button this many times:",
        "pt_br": "Você apertou o botão muitas vezes",
      } +
      {
        "en_us": "Change Language",
        "pt_br": "Mudar idioma",
      } +
      {
        "en_us": "Locale: ",
        "pt_br": "Localidade: ",
      }+
      {
        "en_us": "My Home app",
        "pt_br": "Minha Página Inicial",
      } /*+
     {
        "en_us": "",
        "pt_br": "",
      }*/;

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);

  String plural(int value) => localizePlural(value, this, _t);

  String version(Object modifier) => localizeVersion(modifier, this, _t);

  Map<String, String> allVersions() => localizeAllVersions(this, _t);
}