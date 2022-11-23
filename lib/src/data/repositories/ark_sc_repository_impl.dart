import 'dart:developer';

import 'package:ark_module_prakerja/src/core/exception_handling.dart';
import 'package:ark_module_prakerja/src/data/datasources/remote/ark_sc_remote_datasource.dart';
import 'package:ark_module_prakerja/src/core/failures.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_item_entity.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_seri_entity.dart';
import 'package:ark_module_prakerja/src/domain/repositories/ark_sc_repository.dart';
import 'package:dartz/dartz.dart';

class ArkScRepositoryImpl implements ArkScRepository {
  final ArkScRemoteDataSource dataSource;

  ArkScRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, ResponseCourseSeriEntity>> fetchCourseItem(
      String token, String courseId, String itemId) async {
    try {
      final course = await dataSource.fetchCourseItem(token, courseId, itemId);
      return Right(course);
    } catch (e) {
      log("ERROR SC REPO FETCH COURSE ITEM: ${e.toString()}");
      return ExceptionHandleResponse.execute(e);
    }
  }

  @override
  Future<Either<Failure, ResponseCourseItemEntity>> fetchCourseStatus(
      String token, String courseId) async {
    try {
      final course = await dataSource.fetchCourseStatus(token, courseId);
      return Right(course);
    } catch (e) {
      log("ERROR SC REPO FETCH COURSE STATUS: ${e.toString()}");
      return ExceptionHandleResponse.execute(e);
    }
  }
}
