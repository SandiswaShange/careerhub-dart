// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobDto _$JobDtoFromJson(Map<String, dynamic> json) => _JobDto(
  id: json['id'] as String,
  title: json['title'] as String,
  company: json['company'] as String,
  location: json['location'] as String,
  minSalary: (json['minSalary'] as num?)?.toDouble(),
  maxSalary: (json['maxSalary'] as num?)?.toDouble(),
  postedAt: DateTime.parse(json['postedAt'] as String),
  isActive: json['isActive'] as bool,
  type: (json['type'] as num).toInt(),
  applicationCount: (json['applicationCount'] as num).toInt(),
);

Map<String, dynamic> _$JobDtoToJson(_JobDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'company': instance.company,
  'location': instance.location,
  'minSalary': instance.minSalary,
  'maxSalary': instance.maxSalary,
  'postedAt': instance.postedAt.toIso8601String(),
  'isActive': instance.isActive,
  'type': instance.type,
  'applicationCount': instance.applicationCount,
};
