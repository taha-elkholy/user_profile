import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class ImageModel {
  @JsonKey(name: 'data')
  ImageData? data;
  @JsonKey(name: 'success')
  bool? success;
  @JsonKey(name: 'status')
  int? status;

  ImageModel({
    this.data,
    this.success,
    this.status,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) =>
      _$ImageModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}

@JsonSerializable()
class ImageData {
  @JsonKey(name: 'id')
  String? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'url_viewer')
  String? urlViewer;
  @JsonKey(name: 'url')
  String? url;
  @JsonKey(name: 'display_url')
  String? displayUrl;
  @JsonKey(name: 'size')
  int? size;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'expiration')
  String? expiration;
  @JsonKey(name: 'is_360')
  int? is360;
  @JsonKey(name: 'image')
  Image? image;
  @JsonKey(name: 'thumb')
  Thumb? thumb;
  @JsonKey(name: 'delete_url')
  String? deleteUrl;

  ImageData({
    this.id,
    this.title,
    this.urlViewer,
    this.url,
    this.displayUrl,
    this.size,
    this.time,
    this.expiration,
    this.is360,
    this.image,
    this.thumb,
    this.deleteUrl,
  });

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}

@JsonSerializable()
class Thumb {
  @JsonKey(name: 'filename')
  String? filename;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'mime')
  String? mime;
  @JsonKey(name: 'extension')
  String? extension;
  @JsonKey(name: 'url')
  String? url;

  Thumb({
    this.filename,
    this.name,
    this.mime,
    this.extension,
    this.url,
  });

  factory Thumb.fromJson(Map<String, dynamic> json) => _$ThumbFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbToJson(this);
}

@JsonSerializable()
class Image {
  @JsonKey(name: 'filename')
  String? filename;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'mime')
  String? mime;
  @JsonKey(name: 'extension')
  String? extension;
  @JsonKey(name: 'url')
  String? url;

  Image({
    this.filename,
    this.name,
    this.mime,
    this.extension,
    this.url,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
