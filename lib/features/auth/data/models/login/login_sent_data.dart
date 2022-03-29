import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_sent_data.g.dart';

@JsonSerializable()
class LoginSentData {

  @JsonKey(name: 'email') String email;
  @JsonKey(name: 'password') String password;

  LoginSentData({
    required this.email,
    required this.password,
  });

  factory LoginSentData.fromJson(Map<String, dynamic> json) =>
      _$LoginSentDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginSentDataToJson(this);
}
