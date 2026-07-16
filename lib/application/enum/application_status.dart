enum ApplicationStatus {
  submitted,
  underReview,
  interview,
  rejected;

  String get label {
    switch (this) {
      case ApplicationStatus.submitted:
        return 'Submitted';

      case ApplicationStatus.underReview:
        return 'Under Review';

      case ApplicationStatus.interview:
        return 'Interview';

      case ApplicationStatus.rejected:
        return 'Rejected';
    }
  }
}