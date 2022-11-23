import 'package:ark_module_prakerja/src/domain/entities/price_html_entity.dart';

class PriceHtmlDTO extends PriceHtmlEntity {
  const PriceHtmlDTO(
      {required super.type,
      required super.source,
      required super.value,
      required super.html,
      required super.extras});

  factory PriceHtmlDTO.fromJson(Map<String, dynamic> json) => PriceHtmlDTO(
        type: json["type"],
        source: json["source"],
        value: json["value"],
        html: json["html"],
        extras: List<dynamic>.from(json["extras"].map((x) => x)),
      );
}
