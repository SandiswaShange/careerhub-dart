class JobApplicationEntity {
  int? id;

  late String applicationId;
  late String jobTitle;
  late String companyName;
  late DateTime submittedAt;

  // Stored as a string as required by the assignment
  late String status;
}