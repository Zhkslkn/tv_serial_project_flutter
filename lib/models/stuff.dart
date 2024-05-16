// lib/models/stuff.dart
class Stuff {
  final int id;
  final String name;
  final String role;
  final String imageUrl;

  Stuff(
      {required this.id,
      required this.name,
      required this.role,
      required this.imageUrl});

  factory Stuff.fromJson(Map<String, dynamic> json) {
    return Stuff(
        id: json['id'],
        name: json['name'],
        role: json['role'],
        imageUrl: json['imageUrl']);
  }
}
