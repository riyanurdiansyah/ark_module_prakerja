import 'package:ark_module_prakerja/src/domain/entities/instructor_entity.dart';

class InstructorDTO extends InstructorEntity {
  const InstructorDTO(
      {required super.id,
      required super.name,
      required super.avatar,
      required super.sub,
      required super.averageRating,
      required super.studentCount,
      required super.courseCount,
      required super.bio});

  factory InstructorDTO.fromJson(Map<String, dynamic> json) => InstructorDTO(
        id: json["id"],
        name: json["name"],
        avatar: json["avatar"],
        sub: json["sub"],
        averageRating: json["average_rating"],
        studentCount: json["student_count"],
        courseCount: json["course_count"],
        bio: json["bio"],
      );
}
