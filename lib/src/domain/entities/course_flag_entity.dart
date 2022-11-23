import 'package:equatable/equatable.dart';

class CourseFlagEntity extends Equatable {
  const CourseFlagEntity({
    required this.webinar,
  });

  final String webinar;

  CourseFlagEntity copyWith({
    String? webinar,
  }) =>
      CourseFlagEntity(
        webinar: webinar ?? this.webinar,
      );

  Map<String, dynamic> toJson() => {
        "webinar": webinar,
      };

  @override
  List<Object?> get props => [webinar];
}
