// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      data: json['data'] == null
          ? null
          : ImageData.fromJson(json['data'] as Map<String, dynamic>),
      success: json['success'] as bool?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'success': instance.success,
      'status': instance.status,
    };

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      id: json['id'] as String?,
      title: json['title'] as String?,
      urlViewer: json['url_viewer'] as String?,
      url: json['url'] as String?,
      displayUrl: json['display_url'] as String?,
      size: json['size'] as int?,
      time: json['time'] as String?,
      expiration: json['expiration'] as String?,
      is360: json['is_360'] as int?,
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      thumb: json['thumb'] == null
          ? null
          : Thumb.fromJson(json['thumb'] as Map<String, dynamic>),
      deleteUrl: json['delete_url'] as String?,
    );

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url_viewer': instance.urlViewer,
      'url': instance.url,
      'display_url': instance.displayUrl,
      'size': instance.size,
      'time': instance.time,
      'expiration': instance.expiration,
      'is_360': instance.is360,
      'image': instance.image,
      'thumb': instance.thumb,
      'delete_url': instance.deleteUrl,
    };

Thumb _$ThumbFromJson(Map<String, dynamic> json) => Thumb(
      filename: json['filename'] as String?,
      name: json['name'] as String?,
      mime: json['mime'] as String?,
      extension: json['extension'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ThumbToJson(Thumb instance) => <String, dynamic>{
      'filename': instance.filename,
      'name': instance.name,
      'mime': instance.mime,
      'extension': instance.extension,
      'url': instance.url,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      filename: json['filename'] as String?,
      name: json['name'] as String?,
      mime: json['mime'] as String?,
      extension: json['extension'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'filename': instance.filename,
      'name': instance.name,
      'mime': instance.mime,
      'extension': instance.extension,
      'url': instance.url,
    };
