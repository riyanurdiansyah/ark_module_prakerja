import 'package:ark_module_prakerja/src/domain/entities/question_2_entity.dart';
import 'package:ark_module_prakerja/src/domain/entities/question_entity.dart';

import 'webinar_entity.dart';

class ResponseCourseSeriEntity {
  final bool success;
  final ResponseMessageCourseSeriEntity message;
  final ResponseDataCourseSeriEntity data;

  ResponseCourseSeriEntity({
    required this.success,
    required this.message,
    required this.data,
  });
}

class ResponseDataCourseSeriEntity {
  final int status;
  final String link;
  final String flag;
  final dynamic date;
  final int nilai;

  ResponseDataCourseSeriEntity({
    required this.status,
    required this.link,
    required this.flag,
    required this.date,
    required this.nilai,
  });
}

class ResponseMessageCourseSeriEntity {
  ResponseMessageCourseSeriEntity({
    required this.content,
    required this.webinar,
    required this.meta,
  });

  final String content;
  final WebinarEntity webinar;
  final MetaEntity meta;
}

class MetaEntity {
  final int access;
  final int comments;
  final List<dynamic> iframes;
  final List<String> rifki;
  final dynamic progress;
  final dynamic marks;
  final List<dynamic> assignments;
  final List<dynamic> attachments;
  final String link;
  final int status;
  final List<QuestionEntity> questions;
  final List<Question2Entity> questions2;
  final int max;
  final int passingScore;
  final String completionMessage;
  final int retakes;

  MetaEntity({
    required this.access,
    required this.comments,
    required this.iframes,
    required this.rifki,
    required this.progress,
    required this.marks,
    required this.assignments,
    required this.attachments,
    required this.link,
    required this.status,
    required this.questions,
    required this.passingScore,
    required this.completionMessage,
    required this.retakes,
    required this.max,
    required this.questions2,
  });
}
