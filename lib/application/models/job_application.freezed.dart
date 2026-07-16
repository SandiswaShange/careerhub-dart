// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$JobApplication {
  String get id => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  DateTime get submittedAt => throw _privateConstructorUsedError;
  ApplicationStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of JobApplication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobApplicationCopyWith<JobApplication> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobApplicationCopyWith<$Res> {
  factory $JobApplicationCopyWith(
    JobApplication value,
    $Res Function(JobApplication) then,
  ) = _$JobApplicationCopyWithImpl<$Res, JobApplication>;
  @useResult
  $Res call({
    String id,
    String jobTitle,
    String companyName,
    DateTime submittedAt,
    ApplicationStatus status,
  });
}

/// @nodoc
class _$JobApplicationCopyWithImpl<$Res, $Val extends JobApplication>
    implements $JobApplicationCopyWith<$Res> {
  _$JobApplicationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobApplication
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
                      as DateTime,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ApplicationStatus,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JobApplicationImplCopyWith<$Res>
    implements $JobApplicationCopyWith<$Res> {
  factory _$$JobApplicationImplCopyWith(
    _$JobApplicationImpl value,
    $Res Function(_$JobApplicationImpl) then,
  ) = __$$JobApplicationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String jobTitle,
    String companyName,
    DateTime submittedAt,
    ApplicationStatus status,
  });
}

/// @nodoc
class __$$JobApplicationImplCopyWithImpl<$Res>
    extends _$JobApplicationCopyWithImpl<$Res, _$JobApplicationImpl>
    implements _$$JobApplicationImplCopyWith<$Res> {
  __$$JobApplicationImplCopyWithImpl(
    _$JobApplicationImpl _value,
    $Res Function(_$JobApplicationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JobApplication
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
      _$JobApplicationImpl(
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
                  as DateTime,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ApplicationStatus,
      ),
    );
  }
}

/// @nodoc

class _$JobApplicationImpl implements _JobApplication {
  const _$JobApplicationImpl({
    required this.id,
    required this.jobTitle,
    required this.companyName,
    required this.submittedAt,
    required this.status,
  });

  @override
  final String id;
  @override
  final String jobTitle;
  @override
  final String companyName;
  @override
  final DateTime submittedAt;
  @override
  final ApplicationStatus status;

  @override
  String toString() {
    return 'JobApplication(id: $id, jobTitle: $jobTitle, companyName: $companyName, submittedAt: $submittedAt, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobApplicationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.jobTitle, jobTitle) ||
                other.jobTitle == jobTitle) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, jobTitle, companyName, submittedAt, status);

  /// Create a copy of JobApplication
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobApplicationImplCopyWith<_$JobApplicationImpl> get copyWith =>
      __$$JobApplicationImplCopyWithImpl<_$JobApplicationImpl>(
        this,
        _$identity,
      );
}

abstract class _JobApplication implements JobApplication {
  const factory _JobApplication({
    required final String id,
    required final String jobTitle,
    required final String companyName,
    required final DateTime submittedAt,
    required final ApplicationStatus status,
  }) = _$JobApplicationImpl;

  @override
  String get id;
  @override
  String get jobTitle;
  @override
  String get companyName;
  @override
  DateTime get submittedAt;
  @override
  ApplicationStatus get status;

  /// Create a copy of JobApplication
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobApplicationImplCopyWith<_$JobApplicationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
