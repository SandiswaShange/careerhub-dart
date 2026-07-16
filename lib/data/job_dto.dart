import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_dto.freezed.dart';
part 'job_dto.g.dart';

@freezed
class JobDto with _$JobDto {
  const factory JobDto({
    required String id,
    required String title,
    required String company,
    required String location,
    double? minSalary,
    double? maxSalary,
    required DateTime postedAt,
    required bool isActive,
    required int type,
    required int applicationCount,
  }) = _JobDto;

  factory JobDto.fromJson(Map<String, dynamic> json) =>
      _$JobDtoFromJson(json);
}
/*class JobDto {
  final String id;
  final String title;
  final String company;
  final String location;
  final double? minSalary;
  final double? maxSalary;
  final DateTime postedAt;
  final bool isActive;
  final int type;
  final int applicationCount;

  const JobDto({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    this.minSalary,
    this.maxSalary,
    required this.postedAt,
    required this.isActive,
    required this.type,
    required this.applicationCount,
  });

  factory JobDto.fromJson(Map<String, dynamic> json) {
    return JobDto(
      id: json['id'] as String,
      title: json['title'] as String,
      company: json['company'] as String,
      location: json['location'] as String,
      minSalary: (json['minSalary'] as num?)?.toDouble(),
      maxSalary: (json['maxSalary'] as num?)?.toDouble(),
      postedAt: DateTime.parse(json['postedAt'] as String),
      isActive: json['isActive'] as bool,
      type: json['type'] as int,
      applicationCount: json['applicationCount'] as int,
    );
  }
}*/