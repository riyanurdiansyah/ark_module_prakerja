import 'package:ark_module_prakerja/src/domain/entities/question_entity.dart';

class QuestionDTO extends QuestionEntity {
  QuestionDTO({
    required super.type,
    required super.hint,
    required super.explanation,
    required super.content,
    required super.options,
    required super.correct,
    required super.marks,
    required super.userMarks,
    required super.status,
    required super.marked,
    required super.auto,
  });

  factory QuestionDTO.fromJson(Map<String, dynamic> json) => QuestionDTO(
        type: json["type"],
        hint: json["hint"],
        explanation: json["explanation"],
        content: json["content"],
        options: json["options"] == null
            ? []
            : List<String>.from(json["options"].map((x) => x)),
        correct: json["correct"],
        marks: json["marks"],
        userMarks: json["userMarks"] ?? "",
        status: json["status"],
        marked: json["marked"] ?? "",
        auto: json["auto"],
      );
}
