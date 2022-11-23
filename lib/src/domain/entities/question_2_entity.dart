import 'package:equatable/equatable.dart';

class Question2Entity extends Equatable {
  const Question2Entity({
    required this.type,
    required this.hint,
    required this.explanation,
    required this.content,
    required this.options,
    required this.correct,
    required this.marks,
    required this.userMarks,
    required this.status,
    required this.marked,
    required this.auto,
    required this.quesResult,
  });

  final String type;
  final String hint;
  final String explanation;
  final String content;
  final List<String> options;
  final String correct;
  final int marks;
  final dynamic userMarks;
  final int status;
  final dynamic marked;
  final int auto;
  final String quesResult;

  @override
  List<Object?> get props => [
        type,
        hint,
        explanation,
        content,
        options,
        correct,
        marks,
        userMarks,
        status,
        marked,
        auto,
        quesResult,
      ];
}
