import 'package:ark_module_prakerja/src/domain/entities/course_flag_entity.dart';

class CourseFlagDTO extends CourseFlagEntity {
  const CourseFlagDTO({required super.webinar});

  factory CourseFlagDTO.fromJson(Map<String, dynamic> json) => CourseFlagDTO(
        webinar: json["webinar"],
      );
}
