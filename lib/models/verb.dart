class Verb {
  String base;
  String past;
  String participle;

  Verb({required this.base, required this.past, required this.participle});

  factory Verb.fromJson(Map<String, dynamic> json) {
    return Verb(
      base: json['Base'],
      past: json['Past'],
      participle: json['Participle'],
    );
  }
}
