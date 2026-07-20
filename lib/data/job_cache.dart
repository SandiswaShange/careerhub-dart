import 'package:isar/isar.dart';

part 'job_cache.g.dart';

@collection
class JobCache {
  Id id = Isar.autoIncrement;

  late String jobId;

  late String title;
  late String company;
  late String location;
  late String? salary;
  late String description;
  late String employmentType;
  late bool isOpen;
  late DateTime? closingDate;
}