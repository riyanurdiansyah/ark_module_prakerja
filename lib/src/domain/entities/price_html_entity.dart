import 'package:equatable/equatable.dart';

class PriceHtmlEntity extends Equatable {
  const PriceHtmlEntity({
    required this.type,
    required this.source,
    required this.value,
    required this.html,
    required this.extras,
  });

  final String type;
  final String source;
  final String value;
  final String html;
  final List<dynamic> extras;

  PriceHtmlEntity copyWith({
    String? type,
    String? source,
    String? value,
    String? html,
    List<dynamic>? extras,
  }) =>
      PriceHtmlEntity(
        type: type ?? this.type,
        source: source ?? this.source,
        value: value ?? this.value,
        html: html ?? this.html,
        extras: extras ?? this.extras,
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "source": source,
        "value": value,
        "html": html,
        "extras": List<dynamic>.from(extras.map((x) => x)),
      };

  @override
  List<Object?> get props => [type, source, value, html, extras];
}
