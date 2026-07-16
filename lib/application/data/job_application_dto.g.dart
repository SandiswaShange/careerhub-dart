// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_application_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobApplicationDtoImpl _$$JobApplicationDtoImplFromJson(
  Map<String, dynamic> json,
) => _$JobApplicationDtoImpl(
  id: json['id'] as String,
  jobTitle: json['jobTitle'] as String,
  companyName: json['companyName'] as String,
  submittedAt: json['submittedAt'] as String,
  status: json['status'] as String,
);

Map<String, dynamic> _$$JobApplicationDtoImplToJson(
  _$JobApplicationDtoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'jobTitle': instance.jobTitle,
  'companyName': instance.companyName,
  'submittedAt': instance.submittedAt,
  'status': instance.status,
};
