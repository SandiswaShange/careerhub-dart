import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:careerhub/data/job_dto.dart';

part 'job.freezed.dart';

@freezed
class Job with _$Job {
  const Job._();

  const factory Job({
    required String id,
    required String title,
    required String company,
    required String location,
    String? salary,
    required String description,
    required String employmentType,
    required bool isOpen,
    DateTime? closingDate,
  }) = _Job;

  static Job fromDto(JobDto dto) {
    return Job(
      id: dto.id,
      title: dto.title,
      company: dto.company,
      location: dto.location,
      salary: _formatSalary(dto.minSalary, dto.maxSalary),
      description: '',
      employmentType: _employmentType(dto.type),
      isOpen: dto.isActive,
      closingDate: null,
    );
  }

  static String? _formatSalary(double? min, double? max) {
    if (min == null && max == null) return null;

    if (min != null && max != null) {
      return 'R${min.toInt()} - R${max.toInt()}';
    }

    return 'R${(min ?? max)!.toInt()}';
  }

  static String _employmentType(int type) => switch (type) {
        0 => 'Full-time',
        1 => 'Part-time',
        2 => 'Contract',
        3 => 'Internship',
        _ => 'Unknown',
      };

  bool get canApply => isOpen;

  String get displaySalary => salary ?? 'Market-related';
}