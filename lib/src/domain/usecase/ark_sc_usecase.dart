import 'package:ark_module_prakerja/src/core/failures.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_item_entity.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_seri_entity.dart';
import 'package:ark_module_prakerja/src/domain/repositories/ark_sc_repository.dart';
import 'package:dartz/dartz.dart';

class ArkScUseCase {
  final ArkScRepository repository;

  ArkScUseCase(this.repository);

  Future<Either<Failure, ResponseCourseSeriEntity>> fetchCourseItem(
          String token, String courseId, String itemId) async =>
      await repository.fetchCourseItem(token, courseId, itemId);

  Future<Either<Failure, ResponseCourseItemEntity>> fetchCourseStatus(
          String token, String courseId) async =>
      await repository.fetchCourseStatus(token, courseId);
}
