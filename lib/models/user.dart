import 'package:flutter/foundation.dart';

class User {
  User({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.avatarUrl,
  });

  final String id;
  final String name;
  final String email;
  final String avatarUrl;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      avatarUrl: json['avatarUrl'],
    );
  }
}
