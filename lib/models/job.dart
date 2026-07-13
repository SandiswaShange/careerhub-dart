class Job {
  final int id;
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

  /// Creates a remote job listing.
  Job.remote({
    required int id,
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
    required String title,
    required String company,
    required String location,
    String? salary,
    required String description,
    required String employmentType,
    DateTime? closingDate,
  }) : this(
         id: 0,
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
