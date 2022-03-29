import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:user_profile/core/const/strings.dart';

@module
abstract class DioInit {
  Dio get dio {
    return Dio(
      BaseOptions(
          baseUrl: baseUrl,
          receiveDataWhenStatusError: true,
          responseType: ResponseType.json),
    );
  }
}
