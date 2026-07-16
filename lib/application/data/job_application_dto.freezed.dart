// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_application_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JobApplicationDto _$JobApplicationDtoFromJson(Map<String, dynamic> json) {
  return _JobApplicationDto.fromJson(json);
}

/// @nodoc
mixin _$JobApplicationDto {
  String get id => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  String get submittedAt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this JobApplicationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobApplicationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobApplicationDtoCopyWith<JobApplicationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobApplicationDtoCopyWith<$Res> {
  factory $JobApplicationDtoCopyWith(
    JobApplicationDto value,
    $Res Function(JobApplicationDto) then,
  ) = _$JobApplicationDtoCopyWithImpl<$Res, JobApplicationDto>;
  @useResult
  $Res call({
    String id,
    String jobTitle,
    String companyName,
    String submittedAt,
    String status,
  });
}

/// @nodoc
class _$JobApplicationDtoCopyWithImpl<$Res, $Val extends JobApplicationDto>
    implements $JobApplicationDtoCopyWith<$Res> {
  _$JobApplicationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobApplicationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jobTitle = null,
    Object? companyName = null,
    Object? submittedAt = null,
    Object? status = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            jobTitle: null == jobTitle
                ? _value.jobTitle
                : jobTitle // ignore: cast_nullable_to_non_nullable
                      as String,
            companyName: null == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                      as String,
            submittedAt: null == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JobApplicationDtoImplCopyWith<$Res>
    implements $JobApplicationDtoCopyWith<$Res> {
  factory _$$JobApplicationDtoImplCopyWith(
    _$JobApplicationDtoImpl value,
    $Res Function(_$JobApplicationDtoImpl) then,
  ) = __$$JobApplicationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String jobTitle,
    String companyName,
    String submittedAt,
    String status,
  });
}

/// @nodoc
class __$$JobApplicationDtoImplCopyWithImpl<$Res>
    extends _$JobApplicationDtoCopyWithImpl<$Res, _$JobApplicationDtoImpl>
    implements _$$JobApplicationDtoImplCopyWith<$Res> {
  __$$JobApplicationDtoImplCopyWithImpl(
    _$JobApplicationDtoImpl _value,
    $Res Function(_$JobApplicationDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JobApplicationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? jobTitle = null,
    Object? companyName = null,
    Object? submittedAt = null,
    Object? status = null,
  }) {
    return _then(
      _$JobApplicationDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        jobTitle: null == jobTitle
            ? _value.jobTitle
            : jobTitle // ignore: cast_nullable_to_non_nullable
                  as String,
        companyName: null == companyName
            ? _value.companyName
            : companyName // ignore: cast_nullable_to_non_nullable
                  as String,
        submittedAt: null == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JobApplicationDtoImpl implements _JobApplicationDto {
  const _$JobApplicationDtoImpl({
    required this.id,
    required this.jobTitle,
    required this.companyName,
    required this.submittedAt,
    required this.status,
  });

  factory _$JobApplicationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobApplicationDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String jobTitle;
  @override
  final String companyName;
  @override
  final String submittedAt;
  @override
  final String status;

  @override
  String toString() {
    return 'JobApplicationDto(id: $id, jobTitle: $jobTitle, companyName: $companyName, submittedAt: $submittedAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobApplicationDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, jobTitle, companyName, submittedAt, status);

  /// Create a copy of JobApplicationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobApplicationDtoImplCopyWith<_$JobApplicationDtoImpl> get copyWith =>
      __$$JobApplicationDtoImplCopyWithImpl<_$JobApplicationDtoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$JobApplicationDtoImplToJson(this);
  }
}

abstract class _JobApplicationDto implements JobApplicationDto {
  const factory _JobApplicationDto({
    required final String id,
    required final String jobTitle,
    required final String companyName,
    required final String submittedAt,
    required final String status,
  }) = _$JobApplicationDtoImpl;

  factory _JobApplicationDto.fromJson(Map<String, dynamic> json) =
      _$JobApplicationDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get jobTitle;
  @override
  String get companyName;
  @override
  String get submittedAt;
  @override
  String get status;

  /// Create a copy of JobApplicationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobApplicationDtoImplCopyWith<_$JobApplicationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
