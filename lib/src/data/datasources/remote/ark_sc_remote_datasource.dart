import 'package:ark_module_prakerja/src/data/dto/course_item_dto.dart';
import 'package:ark_module_prakerja/src/data/dto/course_seri_dto.dart';

abstract class ArkScRemoteDataSource {
  Future<ResponseCourseSeriDTO> fetchCourseItem(
      String token, String courseId, String itemId);

  Future<ResponseCourseItemDTO> fetchCourseStatus(
      String token, String courseId);
}
