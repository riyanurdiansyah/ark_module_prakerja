import 'package:ark_module_prakerja/src/domain/entities/course_item_entity.dart';
import 'package:ark_module_prakerja/src/utils/app_empty_entity.dart';

class ResponseCourseItemDTO extends ResponseCourseItemEntity {
  const ResponseCourseItemDTO({
    required super.success,
    required super.isWebinar,
    required super.data,
  });
  factory ResponseCourseItemDTO.fromJson(Map<String, dynamic> json) =>
      ResponseCourseItemDTO(
        success: json["success"] ?? false,
        isWebinar: json["isWebinar"] ?? "0",
        data: json["data"] == null
            ? emptyDataCourseItem
            : ResponseDataCourseItemDTO.fromJson(
                json["data"],
              ),
      );
}

class ResponseDataCourseItemDTO extends ResponseDataCourseItemEntity {
  const ResponseDataCourseItemDTO({
    required super.currentUnitKey,
    required super.courseitems,
    required super.remainingDuration,
  });

  factory ResponseDataCourseItemDTO.fromJson(Map<String, dynamic> json) =>
      ResponseDataCourseItemDTO(
        currentUnitKey: json["current_unit_key"],
        courseitems: json["courseitems"] == null
            ? []
            : List<CourseItemDTO>.from(
                json["courseitems"].map(
                  (x) => CourseItemDTO.fromJson(x),
                ),
              ),
        remainingDuration: json["remaining_duration"],
      );
}

class CourseItemDTO extends CourseItemEntity {
  const CourseItemDTO({
    required super.key,
    required super.id,
    required super.type,
    required super.title,
    required super.duration,
    required super.content,
    required super.meta,
    required super.format,
    required super.status,
    required super.passingScore,
    required super.marks,
    required super.arkQuizType,
    required super.passingCertificatePosttest,
    required super.mp4Link,
    required super.idParent,
    required super.unitType,
  });

  factory CourseItemDTO.fromJson(Map<String, dynamic> json) => CourseItemDTO(
        key: json["key"] ?? -99,
        id: json["id"],
        type: json["type"] ?? "",
        title: json["title"] ?? "",
        duration: json["duration"] ?? 0,
        content: json["content"] ?? "",
        meta: json["meta"] == null
            ? []
            : List<dynamic>.from(json["meta"].map((x) => x)),
        format: json["format"] ?? "",
        status: json["status"] ?? 0,
        passingScore: json["passing_score"] ?? 0,
        marks: json["marks"] ?? "0",
        arkQuizType: json["ark_quiz_type"] ?? "",
        passingCertificatePosttest: json["passing_certificate_posttest"] ?? "",
        mp4Link: json["mp4Link"] ?? "",
        unitType: json["unitType"] ?? "",
        idParent: 0,
      );
}
