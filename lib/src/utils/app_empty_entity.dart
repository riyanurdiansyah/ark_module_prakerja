import 'package:ark_module_prakerja/src/domain/entities/course_seri_entity.dart';
import 'package:ark_module_prakerja/src/domain/entities/webinar_entity.dart';

// final QuestionEntity emptyQuestion = QuestionEntity(
//   type: "",
//   hint: "",
//   explanation: "",
//   content: "",
//   options: [],
//   correct: "",
//   marks: 0,
//   userMarks: "",
//   status: 0,
//   marked: "",
//   auto: 0,
// );

final MetaEntity emptyMetaEntity = MetaEntity(
  access: 0,
  comments: 0,
  iframes: [],
  rifki: [],
  progress: 0.0,
  marks: 0,
  assignments: [],
  attachments: [],
  link: "",
  status: 0,
  questions: [],
  passingScore: 0,
  completionMessage: "",
  retakes: 0,
  max: 0,
  questions2: [],
);

const WebinarEntity emptyWebinar =
    WebinarEntity(startDate: "0", endDate: "0", meetLink: "", sesiUser: "");
