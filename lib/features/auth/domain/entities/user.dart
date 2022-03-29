import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String name;
  final String email;
  final String image;
  final String phone;
  final String jobTitle;

  const User({
    required this.name,
    required this.email,
    required this.image,
    required this.phone,
    required this.jobTitle,
  });

  @override
  List<Object?> get props => [email];
}
