// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

JobDto _$JobDtoFromJson(Map<String, dynamic> json) {
  return _JobDto.fromJson(json);
}

/// @nodoc
mixin _$JobDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  double? get minSalary => throw _privateConstructorUsedError;
  double? get maxSalary => throw _privateConstructorUsedError;
  DateTime get postedAt => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get applicationCount => throw _privateConstructorUsedError;

  /// Serializes this JobDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobDtoCopyWith<JobDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDtoCopyWith<$Res> {
  factory $JobDtoCopyWith(JobDto value, $Res Function(JobDto) then) =
      _$JobDtoCopyWithImpl<$Res, JobDto>;
  @useResult
  $Res call({
    String id,
    String title,
    String company,
    String location,
    double? minSalary,
    double? maxSalary,
    DateTime postedAt,
    bool isActive,
    int type,
    int applicationCount,
  });
}

/// @nodoc
class _$JobDtoCopyWithImpl<$Res, $Val extends JobDto>
    implements $JobDtoCopyWith<$Res> {
  _$JobDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? company = null,
    Object? location = null,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
    Object? postedAt = null,
    Object? isActive = null,
    Object? type = null,
    Object? applicationCount = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            company: null == company
                ? _value.company
                : company // ignore: cast_nullable_to_non_nullable
                      as String,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String,
            minSalary: freezed == minSalary
                ? _value.minSalary
                : minSalary // ignore: cast_nullable_to_non_nullable
                      as double?,
            maxSalary: freezed == maxSalary
                ? _value.maxSalary
                : maxSalary // ignore: cast_nullable_to_non_nullable
                      as double?,
            postedAt: null == postedAt
                ? _value.postedAt
                : postedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as int,
            applicationCount: null == applicationCount
                ? _value.applicationCount
                : applicationCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JobDtoImplCopyWith<$Res> implements $JobDtoCopyWith<$Res> {
  factory _$$JobDtoImplCopyWith(
    _$JobDtoImpl value,
    $Res Function(_$JobDtoImpl) then,
  ) = __$$JobDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String company,
    String location,
    double? minSalary,
    double? maxSalary,
    DateTime postedAt,
    bool isActive,
    int type,
    int applicationCount,
  });
}

/// @nodoc
class __$$JobDtoImplCopyWithImpl<$Res>
    extends _$JobDtoCopyWithImpl<$Res, _$JobDtoImpl>
    implements _$$JobDtoImplCopyWith<$Res> {
  __$$JobDtoImplCopyWithImpl(
    _$JobDtoImpl _value,
    $Res Function(_$JobDtoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of JobDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? company = null,
    Object? location = null,
    Object? minSalary = freezed,
    Object? maxSalary = freezed,
    Object? postedAt = null,
    Object? isActive = null,
    Object? type = null,
    Object? applicationCount = null,
  }) {
    return _then(
      _$JobDtoImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        company: null == company
            ? _value.company
            : company // ignore: cast_nullable_to_non_nullable
                  as String,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String,
        minSalary: freezed == minSalary
            ? _value.minSalary
            : minSalary // ignore: cast_nullable_to_non_nullable
                  as double?,
        maxSalary: freezed == maxSalary
            ? _value.maxSalary
            : maxSalary // ignore: cast_nullable_to_non_nullable
                  as double?,
        postedAt: null == postedAt
            ? _value.postedAt
            : postedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as int,
        applicationCount: null == applicationCount
            ? _value.applicationCount
            : applicationCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDtoImpl implements _JobDto {
  const _$JobDtoImpl({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    this.minSalary,
    this.maxSalary,
    required this.postedAt,
    required this.isActive,
    required this.type,
    required this.applicationCount,
  });

  factory _$JobDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String company;
  @override
  final String location;
  @override
  final double? minSalary;
  @override
  final double? maxSalary;
  @override
  final DateTime postedAt;
  @override
  final bool isActive;
  @override
  final int type;
  @override
  final int applicationCount;

  @override
  String toString() {
    return 'JobDto(id: $id, title: $title, company: $company, location: $location, minSalary: $minSalary, maxSalary: $maxSalary, postedAt: $postedAt, isActive: $isActive, type: $type, applicationCount: $applicationCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.minSalary, minSalary) ||
                other.minSalary == minSalary) &&
            (identical(other.maxSalary, maxSalary) ||
                other.maxSalary == maxSalary) &&
            (identical(other.postedAt, postedAt) ||
                other.postedAt == postedAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.applicationCount, applicationCount) ||
                other.applicationCount == applicationCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    company,
    location,
    minSalary,
    maxSalary,
    postedAt,
    isActive,
    type,
    applicationCount,
  );

  /// Create a copy of JobDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDtoImplCopyWith<_$JobDtoImpl> get copyWith =>
      __$$JobDtoImplCopyWithImpl<_$JobDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDtoImplToJson(this);
  }
}

abstract class _JobDto implements JobDto {
  const factory _JobDto({
    required final String id,
    required final String title,
    required final String company,
    required final String location,
    final double? minSalary,
    final double? maxSalary,
    required final DateTime postedAt,
    required final bool isActive,
    required final int type,
    required final int applicationCount,
  }) = _$JobDtoImpl;

  factory _JobDto.fromJson(Map<String, dynamic> json) = _$JobDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get company;
  @override
  String get location;
  @override
  double? get minSalary;
  @override
  double? get maxSalary;
  @override
  DateTime get postedAt;
  @override
  bool get isActive;
  @override
  int get type;
  @override
  int get applicationCount;

  /// Create a copy of JobDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobDtoImplCopyWith<_$JobDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
