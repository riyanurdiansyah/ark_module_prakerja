import 'package:equatable/equatable.dart';

class ResponseCourseItemEntity extends Equatable {
  const ResponseCourseItemEntity({
    required this.success,
    required this.isWebinar,
    required this.data,
  });

  final bool success;
  final String isWebinar;
  final ResponseDataCourseItemEntity data;

  @override
  List<Object?> get props => [success, isWebinar, data];
}

class ResponseDataCourseItemEntity extends Equatable {
  const ResponseDataCourseItemEntity({
    required this.currentUnitKey,
    required this.courseitems,
    required this.remainingDuration,
  });

  final int currentUnitKey;
  final List<CourseItemEntity> courseitems;
  final String remainingDuration;

  @override
  List<Object?> get props => [currentUnitKey, courseitems, remainingDuration];
}

class CourseItemEntity extends Equatable {
  const CourseItemEntity({
    required this.key,
    required this.id,
    required this.type,
    required this.title,
    required this.duration,
    required this.content,
    required this.meta,
    required this.format,
    required this.status,
    required this.passingScore,
    required this.marks,
    required this.arkQuizType,
    required this.passingCertificatePosttest,
    required this.mp4Link,
    required this.idParent,
    required this.unitType,
  });
  final int key;
  final dynamic id;
  final String type;
  final String title;
  final int duration;
  final String content;
  final List<dynamic> meta;
  final String format;
  final int status;
  final int passingScore;
  final String marks;
  final String arkQuizType;
  final String passingCertificatePosttest;
  final String mp4Link;
  final int idParent;
  final String unitType;

  Map<String, dynamic> toJson() => {
        "key": key,
        "id": id,
        "type": type,
        "title": title,
        "duration": duration,
        "content": content,
        "meta": meta.map((v) => v.toJson()).toList(),
        "format": format,
        "status": status,
        "passing_score": passingScore,
        "marks": marks,
        "ark_quiz_type": arkQuizType,
        "passing_certificate_posttest": passingCertificatePosttest,
        "unit_type": unitType,
      };

  @override
  List<Object?> get props => [
        key,
        id,
        type,
        title,
        duration,
        content,
        meta,
        format,
        status,
        passingScore,
        marks,
        arkQuizType,
        passingCertificatePosttest,
        mp4Link,
        idParent,
        unitType,
      ];
}
