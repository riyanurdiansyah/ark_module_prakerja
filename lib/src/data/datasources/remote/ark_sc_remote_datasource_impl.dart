import 'dart:developer';

import 'package:ark_module_prakerja/src/core/exception.dart';
import 'package:ark_module_prakerja/src/core/interceptor.dart';
import 'package:ark_module_prakerja/src/data/datasources/remote/ark_sc_remote_datasource.dart';
import 'package:ark_module_prakerja/src/data/dto/course_item_dto.dart';
import 'package:ark_module_prakerja/src/data/dto/course_seri_dto.dart';
import 'package:ark_module_prakerja/src/utils/app_url.dart';
import 'package:dio/dio.dart';

class ArkScRemoteDataSourceImpl implements ArkScRemoteDataSource {
  late Dio dio;
  ArkScRemoteDataSourceImpl({Dio? dio}) {
    this.dio = dio ?? Dio();
  }

  @override
  Future<ResponseCourseSeriDTO> fetchCourseItem(
      String token, String courseId, String itemId) async {
    await dioInterceptor(dio, token);

    final response = await dio.get(
        "$prakerjaUrlStaging/api/v1/prakerja/user/coursestatus/$courseId/item/$itemId");
    int code = response.statusCode ?? 500;
    if (code >= 500) {
      throw CustomException(code, 'Error... failed connect to server');
    } else if (code != 200) {
      throw CustomException(
          code, response.data['message'] ?? 'Failed... Please try again');
    } else {
      return ResponseCourseSeriDTO.fromJson(response.data);
    }
  }

  @override
  Future<ResponseCourseItemDTO> fetchCourseStatus(
      String token, String courseId) async {
    await dioInterceptor(dio, token);

    final response = await dio.get(
        "$prakerjaUrlStaging/api/v1/prakerja/user/coursestatusV2/$courseId");
    log("RESPONSE COURSE STATUS : ${response.data}");
    int code = response.statusCode ?? 500;
    if (code >= 500) {
      throw CustomException(code, 'Error... failed connect to server');
    } else if (code != 200) {
      throw CustomException(
          code, response.data['message'] ?? 'Failed... Please try again');
    } else {
      return ResponseCourseItemDTO.fromJson(response.data);
    }
  }
}
