class QuestionEntity {
  QuestionEntity({
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
}
