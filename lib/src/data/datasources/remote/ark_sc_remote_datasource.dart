import 'package:ark_module_prakerja/src/data/dto/course_item_dto.dart';

abstract class ArkScRemoteDataSource {
  Future<CourseItemDTO> fetchCourseItem(String courseId);
}
