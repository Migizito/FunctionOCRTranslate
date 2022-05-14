class TextTranslate {
  final String? textOrigen;
  final String? langOrg;
  final String? langTo;
  final String? textTranslate;

  TextTranslate({
    required this.textOrigen,
    required this.langOrg,
    required this.langTo,
    required this.textTranslate,
  });

  factory TextTranslate.fromJson(Map<String, dynamic> json) {
    return TextTranslate(
      textOrigen: json['textOrigen'],
      langOrg: json['langOrg'],
      langTo: json['langTo'],
      textTranslate: json['textTranslate'],
    );
  }
}
