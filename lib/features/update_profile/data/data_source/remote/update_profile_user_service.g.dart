// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_user_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _UpdateProfileUserService implements UpdateProfileUserService {
  _UpdateProfileUserService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://laravel-flutter-server.herokuapp.com/api/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserData> updateUser({required token, required updatedData}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': token};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(updatedData.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserData>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'users',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ImageModel> uploadUserImage(
      {required apiKey, required imageFile}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('key', apiKey));
    _data.files.add(MapEntry(
        'image',
        MultipartFile.fromFileSync(imageFile.path,
            filename: imageFile.path.split(Platform.pathSeparator).last)));
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ImageModel>(Options(
                method: 'POST',
                headers: _headers,
                extra: _extra,
                contentType: 'multipart/form-data')
            .compose(_dio.options, 'https://api.imgbb.com/1/upload',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ImageModel.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
