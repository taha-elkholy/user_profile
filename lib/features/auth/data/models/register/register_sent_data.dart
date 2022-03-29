import 'package:json_annotation/json_annotation.dart';

part 'register_sent_data.g.dart';

@JsonSerializable()
class RegisterSentData {
  @JsonKey(name: 'name')
  String name;
  @JsonKey(name: 'phone')
  String phone;
  @JsonKey(name: 'email')
  String email;
  @JsonKey(name: 'password')
  String password;
  @JsonKey(name: 'password_confirmation')
  String passwordConformation;

  RegisterSentData({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
    required this.passwordConformation,
  });

  factory RegisterSentData.fromJson(Map<String, dynamic> json) =>
      _$RegisterSentDataFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterSentDataToJson(this);
}
