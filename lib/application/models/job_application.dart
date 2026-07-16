import 'package:freezed_annotation/freezed_annotation.dart';
import '../enum/application_status.dart';
import '../data/job_application_dto.dart';

part 'job_application.freezed.dart';

@freezed
class JobApplication with _$JobApplication {
  const factory JobApplication({
    required String id,
    required String jobTitle,
    required String companyName,
    required DateTime submittedAt,
    required ApplicationStatus status,
  }) = _JobApplication;

  factory JobApplication.fromDto(JobApplicationDto dto) {
    return JobApplication(
      id: dto.id,
      jobTitle: dto.jobTitle,
      companyName: dto.companyName,
      submittedAt: DateTime.parse(dto.submittedAt),
      status: ApplicationStatus.values.firstWhere(
        (value) => value.name == dto.status,
      ),
    );
  }
}