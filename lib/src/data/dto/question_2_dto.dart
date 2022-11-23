import 'package:ark_module_prakerja/src/domain/entities/question_2_entity.dart';

class Question2DTO extends Question2Entity {
  const Question2DTO({
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
    required super.quesResult,
  });

  factory Question2DTO.fromJson(Map<String, dynamic> json) => Question2DTO(
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
        quesResult: "",
      );
}
