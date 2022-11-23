import 'package:ark_module_prakerja/src/domain/entities/webinar_entity.dart';

class WebinarDTO extends WebinarEntity {
  const WebinarDTO({
    required super.startDate,
    required super.endDate,
    required super.meetLink,
    required super.sesiUser,
  });

  factory WebinarDTO.fromJson(Map<String, dynamic> json) => WebinarDTO(
        startDate:
            json["start_datetime"] == null || json["start_datetime"] == ""
                ? "0"
                : json["start_datetime"].toString(),
        endDate: json["end_datetime"] == null || json["end_datetime"] == ""
            ? "0"
            : json["end_datetime"].toString(),
        meetLink: json["meet_link"] ?? "",
        sesiUser: json['sesi_user'] ?? "",
      );
}
