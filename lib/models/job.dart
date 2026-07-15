import 'package:careerhub/data/job_dto.dart';

class Job {
  final String id;
  final String title;
  final String company;
  final String location;
  final String? salary;
  final String description;
  final String employmentType;
  final bool isOpen;
  final DateTime? closingDate;

  const Job({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    this.salary,
    required this.description,
    required this.employmentType,
    required this.isOpen,
    this.closingDate,
  });

Job.fromDto(JobDto dto)
    : id = dto.id ,
      title = dto.title,
      company = dto.company,
      location = dto.location,
      salary = _formatSalary(dto.minSalary, dto.maxSalary),
      description = dto.description,
      employmentType = _employmentType(dto.type),
      isOpen = dto.isActive,
      closingDate = dto.closingDate;
      static String? _formatSalary(double? min, double? max) {
        if (min == null && max == null) return null;

        if (min != null && max != null) {
          return 'R${min.toInt()} - R${max.toInt()}';
        }

        return 'R${(min ?? max)!.toInt()}';
      }

      static String _employmentType(int type) {
        switch (type) {
          case 0:
            return 'Full-time';
          case 1:
            return 'Part-time';
          case 2:
            return 'Contract';
          case 3:
            return 'Internship';
          default:
            return 'Unknown';
        }
      }

  /// Creates a remote job listing.
  Job.remote({
    required String id,
    required String title,
    required String company,
    String? salary,
    required String description,
    DateTime? closingDate,
    bool isOpen = true,
  }) : this(
         id: id,
         title: title,
         company: company,
         location: "Remote",
         salary: salary,
         description: description,
         employmentType: "Remote",
         isOpen: isOpen,
         closingDate: closingDate,
       );

  /// Creates a job that is already closed.
  Job.closed({
    required String id,
    required String title,
    required String company,
    required String location,
    String? salary,
    required String description,
    required String employmentType,
    DateTime? closingDate,
  }) : this(
         id: id,
         title: title,
         company: company,
         location: location,
         salary: salary,
         description: description,
         employmentType: employmentType,
         isOpen: false,
         closingDate: closingDate,
       );

  bool get canApply => isOpen;

  String get displaySalary {
    return salary ?? 'Market-related';
  }

  @override
  String toString() {
    return 'Job(title: $title, '
        'company: $company, '
        'location: $location, '
        'employmentType: $employmentType, '
        'salary: $displaySalary, '
        'isOpen: $isOpen, '
        'closingDate: ${closingDate ?? "None"})';
  }
}
