import 'package:equatable/equatable.dart';

class InstructorEntity extends Equatable {
  const InstructorEntity({
    required this.id,
    required this.name,
    required this.avatar,
    required this.sub,
    required this.averageRating,
    required this.studentCount,
    required this.courseCount,
    required this.bio,
  });

  final String id;
  final String name;
  final String avatar;
  final String sub;
  final String averageRating;
  final String studentCount;
  final String courseCount;
  final String bio;

  InstructorEntity copyWith({
    String? id,
    String? name,
    String? avatar,
    String? sub,
    String? averageRating,
    String? studentCount,
    String? courseCount,
    String? bio,
  }) =>
      InstructorEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        avatar: avatar ?? this.avatar,
        sub: sub ?? this.sub,
        averageRating: averageRating ?? this.averageRating,
        studentCount: studentCount ?? this.studentCount,
        courseCount: courseCount ?? this.courseCount,
        bio: bio ?? this.bio,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "avatar": avatar,
        "sub": sub,
        "average_rating": averageRating,
        "student_count": studentCount,
        "course_count": courseCount,
        "bio": bio,
      };

  @override
  List<Object?> get props =>
      [id, name, avatar, sub, averageRating, studentCount, courseCount, bio];
}
