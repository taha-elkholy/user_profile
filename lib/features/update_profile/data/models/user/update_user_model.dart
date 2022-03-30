import 'package:json_annotation/json_annotation.dart';

part 'update_user_model.g.dart';

@JsonSerializable()
class UpdateUserModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'job_title')
  String? jobTitle;
  @JsonKey(name: 'image')
  String? image;

  UpdateUserModel({
    this.name,
    this.phone,
    this.jobTitle,
    this.image,
  });

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateUserModelToJson(this);
}
