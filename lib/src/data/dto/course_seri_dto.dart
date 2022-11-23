import 'package:ark_module_prakerja/src/data/dto/question_2_dto.dart';
import 'package:ark_module_prakerja/src/data/dto/question_dto.dart';
import 'package:ark_module_prakerja/src/data/dto/webinar_dto.dart';
import 'package:ark_module_prakerja/src/domain/entities/course_seri_entity.dart';
import 'package:ark_module_prakerja/src/utils/app_empty_entity.dart';

class ResponseCourseSeriDTO extends ResponseCourseSeriEntity {
  ResponseCourseSeriDTO({
    required super.success,
    required super.message,
    required super.data,
  });

  factory ResponseCourseSeriDTO.fromJson(Map<String, dynamic> json) =>
      ResponseCourseSeriDTO(
        success: json["success"],
        data: json["data"] == null
            ? emptyDataCourseSeri
            : ResponseDataCourseSeriDTO.fromJson(json["data"]),
        message: json["message"] == null
            ? emptyMessageCourseSeri
            : ResponseMessageCourseSeriDTO.fromJson(json["message"]),
      );
}

class ResponseDataCourseSeriDTO extends ResponseDataCourseSeriEntity {
  ResponseDataCourseSeriDTO({
    required super.status,
    required super.link,
    required super.flag,
    required super.date,
    required super.nilai,
  });

  factory ResponseDataCourseSeriDTO.fromJson(Map<String, dynamic> json) =>
      ResponseDataCourseSeriDTO(
        status: json["status"] ?? 0,
        link: json["link"] ?? "",
        flag: json["flag"] ?? "",
        date: json["date"] ?? "",
        nilai: json["nilai"] ?? 0,
      );
}

class ResponseMessageCourseSeriDTO extends ResponseMessageCourseSeriEntity {
  ResponseMessageCourseSeriDTO({
    required super.content,
    required super.webinar,
    required super.meta,
  });

  factory ResponseMessageCourseSeriDTO.fromJson(Map<String, dynamic> json) =>
      ResponseMessageCourseSeriDTO(
        content: json["content"] ?? "",
        meta: json["meta"] == null
            ? emptyMetaEntity
            : MetaDTO.fromJson(json["meta"]),
        webinar: json["webinar"] == null
            ? emptyWebinar
            : WebinarDTO.fromJson(
                json["webinar"],
              ),
      );
}

class MetaDTO extends MetaEntity {
  MetaDTO({
    required super.access,
    required super.comments,
    required super.iframes,
    required super.rifki,
    required super.progress,
    required super.marks,
    required super.assignments,
    required super.attachments,
    required super.link,
    required super.status,
    required super.questions,
    required super.passingScore,
    required super.completionMessage,
    required super.retakes,
    required super.max,
    required super.questions2,
  });

  factory MetaDTO.fromJson(Map<String, dynamic> json) => MetaDTO(
        access: json["access"] ?? 0,
        comments: json["comments"] ?? 0,
        iframes: json["iframes"] == null
            ? []
            : List<dynamic>.from(json["iframes"].map((x) => x)),
        rifki: json["rifki"] == null
            ? []
            : List<String>.from(json["rifki"].map((x) => x)),
        progress: json["progress"] ?? 0.0,
        marks: json["marks"] == null || json["marks"] == "" ? 0 : json["marks"],
        assignments: json["assignments"] == null
            ? []
            : List<dynamic>.from(json["assignments"].map((x) => x)),
        attachments: json["attachments"] == null
            ? []
            : List<dynamic>.from(json["attachments"].map((x) => x)),
        link: json["link"] ?? "",
        status: json["status"] ?? 0,
        questions: json["questions"] == null
            ? []
            : List<QuestionDTO>.from(
                json["questions"].map((x) => QuestionDTO.fromJson(x))),
        questions2: json["questions2"] == null
            ? []
            : List<Question2DTO>.from(
                json["questions2"].map((x) => Question2DTO.fromJson(x))),
        max: json["max"],
        passingScore: json["passing_score"] ?? 0,
        retakes: json["retakes"] ?? 0,
        completionMessage: json["completion_message"],
      );
}
