class JobDto {
  final String id;
  final String title;
  final String description;
  final String company;
  final String location;
  final int type;
  final double? minSalary;
  final double? maxSalary;
  final DateTime postedAt;
  final DateTime closingDate;
  final bool isActive;

  const JobDto({
    required this.id,
    required this.title,
    required this.description,
    required this.company,
    required this.location,
    required this.type,
    this.minSalary,
    this.maxSalary,
    required this.postedAt,
    required this.closingDate,
    required this.isActive,
  });

  factory JobDto.fromJson(Map<String, dynamic> json) {
    return JobDto(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      company: json['company'],
      location: json['location'],
      type: json['type'],
      minSalary: (json['minSalary'] as num?)?.toDouble(),
      maxSalary: (json['maxSalary'] as num?)?.toDouble(),
      postedAt: DateTime.parse(json['postedAt']),
      closingDate: DateTime.parse(json['closingDate']),
      isActive: json['isActive'],
    );
  }
}