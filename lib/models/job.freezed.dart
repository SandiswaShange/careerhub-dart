// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Job {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String? get salary => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get employmentType => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  DateTime? get closingDate => throw _privateConstructorUsedError;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call({
    String id,
    String title,
    String company,
    String location,
    String? salary,
    String description,
    String employmentType,
    bool isOpen,
    DateTime? closingDate,
  });
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? company = null,
    Object? location = null,
    Object? salary = freezed,
    Object? description = null,
    Object? employmentType = null,
    Object? isOpen = null,
    Object? closingDate = freezed,
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
            salary: freezed == salary
                ? _value.salary
                : salary // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            employmentType: null == employmentType
                ? _value.employmentType
                : employmentType // ignore: cast_nullable_to_non_nullable
                      as String,
            isOpen: null == isOpen
                ? _value.isOpen
                : isOpen // ignore: cast_nullable_to_non_nullable
                      as bool,
            closingDate: freezed == closingDate
                ? _value.closingDate
                : closingDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String company,
    String location,
    String? salary,
    String description,
    String employmentType,
    bool isOpen,
    DateTime? closingDate,
  });
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
    : super(_value, _then);

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? company = null,
    Object? location = null,
    Object? salary = freezed,
    Object? description = null,
    Object? employmentType = null,
    Object? isOpen = null,
    Object? closingDate = freezed,
  }) {
    return _then(
      _$JobImpl(
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
        salary: freezed == salary
            ? _value.salary
            : salary // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        employmentType: null == employmentType
            ? _value.employmentType
            : employmentType // ignore: cast_nullable_to_non_nullable
                  as String,
        isOpen: null == isOpen
            ? _value.isOpen
            : isOpen // ignore: cast_nullable_to_non_nullable
                  as bool,
        closingDate: freezed == closingDate
            ? _value.closingDate
            : closingDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc

class _$JobImpl extends _Job {
  const _$JobImpl({
    required this.id,
    required this.title,
    required this.company,
    required this.location,
    this.salary,
    required this.description,
    required this.employmentType,
    required this.isOpen,
    this.closingDate,
  }) : super._();

  @override
  final String id;
  @override
  final String title;
  @override
  final String company;
  @override
  final String location;
  @override
  final String? salary;
  @override
  final String description;
  @override
  final String employmentType;
  @override
  final bool isOpen;
  @override
  final DateTime? closingDate;

  @override
  String toString() {
    return 'Job(id: $id, title: $title, company: $company, location: $location, salary: $salary, description: $description, employmentType: $employmentType, isOpen: $isOpen, closingDate: $closingDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.salary, salary) || other.salary == salary) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.employmentType, employmentType) ||
                other.employmentType == employmentType) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.closingDate, closingDate) ||
                other.closingDate == closingDate));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    company,
    location,
    salary,
    description,
    employmentType,
    isOpen,
    closingDate,
  );

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);
}

abstract class _Job extends Job {
  const factory _Job({
    required final String id,
    required final String title,
    required final String company,
    required final String location,
    final String? salary,
    required final String description,
    required final String employmentType,
    required final bool isOpen,
    final DateTime? closingDate,
  }) = _$JobImpl;
  const _Job._() : super._();

  @override
  String get id;
  @override
  String get title;
  @override
  String get company;
  @override
  String get location;
  @override
  String? get salary;
  @override
  String get description;
  @override
  String get employmentType;
  @override
  bool get isOpen;
  @override
  DateTime? get closingDate;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
