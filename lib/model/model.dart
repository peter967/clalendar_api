// ignore_for_file: public_member_api_docs, sort_constructors_first

class Model {
  final String name;
  final String description;
  final String date;
  Model({
    required this.name,
    required this.description,
    required this.date,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      name: json['name'] as String,
      description: json['description'] as String,
      date: json['date']['iso'] as String,
    );
  }
}
