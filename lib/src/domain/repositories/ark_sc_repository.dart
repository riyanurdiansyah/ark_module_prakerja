import 'package:ark_module_prakerja/src/core/failures.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_item_entity.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_seri_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ArkScRepository {
  Future<Either<Failure, ResponseCourseSeriEntity>> fetchCourseItem(
      String token, String courseId, String itemId);

  Future<Either<Failure, ResponseCourseItemEntity>> fetchCourseStatus(
      String token, String courseId);
}
