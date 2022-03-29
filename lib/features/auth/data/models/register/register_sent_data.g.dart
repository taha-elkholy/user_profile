// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_sent_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterSentData _$RegisterSentDataFromJson(Map<String, dynamic> json) =>
    RegisterSentData(
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      passwordConformation: json['password_confirmation'] as String,
    );

Map<String, dynamic> _$RegisterSentDataToJson(RegisterSentData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.passwordConformation,
    };
