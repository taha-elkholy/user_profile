import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: 'user')
  UserData user;
  @JsonKey(name: 'token')
  String token;

  UserModel({
    required this.user,
    required this.token,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'email_verified_at')
  String? emailVerifiedAt;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'job_title')
  String? jobTitle;
  @JsonKey(name: 'image')
  String? image;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'id')
  int? id;

  UserData({
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.phone,
    this.jobTitle,
    this.image,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
