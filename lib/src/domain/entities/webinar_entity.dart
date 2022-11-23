import 'package:equatable/equatable.dart';

class WebinarEntity extends Equatable {
  final String startDate;
  final String endDate;
  final String meetLink;
  final String sesiUser;

  const WebinarEntity({
    required this.startDate,
    required this.endDate,
    required this.meetLink,
    required this.sesiUser,
  });

  @override
  List<Object?> get props => [startDate, endDate, meetLink, sesiUser];
}
