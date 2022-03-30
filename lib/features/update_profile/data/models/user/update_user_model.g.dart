// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserModel _$UpdateUserModelFromJson(Map<String, dynamic> json) =>
    UpdateUserModel(
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      jobTitle: json['job_title'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$UpdateUserModelToJson(UpdateUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phone': instance.phone,
      'job_title': instance.jobTitle,
      'image': instance.image,
    };
