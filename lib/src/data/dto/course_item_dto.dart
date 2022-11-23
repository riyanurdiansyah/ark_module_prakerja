import 'package:ark_module_prakerja/src/domain/entities/course_item_entity.dart';

class CourseItemDTO extends CourseItemEntity {
  CourseItemDTO({
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
        format: json["format"],
        status: json["status"],
        passingScore: json["passing_score"] ?? 0,
        marks: json["marks"] ?? "0",
        arkQuizType: json["ark_quiz_type"] ?? "",
        passingCertificatePosttest: json["passing_certificate_posttest"],
        mp4Link: json["mp4Link"] ?? "",
        unitType: json["unitType"] ?? "",
        idParent: 0,
      );
}
