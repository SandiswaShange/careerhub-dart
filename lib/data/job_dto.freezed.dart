// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobDto {

 String get id; String get title; String get company; String get location; double? get minSalary; double? get maxSalary; DateTime get postedAt; bool get isActive; int get type; int get applicationCount;
/// Create a copy of JobDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobDtoCopyWith<JobDto> get copyWith => _$JobDtoCopyWithImpl<JobDto>(this as JobDto, _$identity);

  /// Serializes this JobDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.company, company) || other.company == company)&&(identical(other.location, location) || other.location == location)&&(identical(other.minSalary, minSalary) || other.minSalary == minSalary)&&(identical(other.maxSalary, maxSalary) || other.maxSalary == maxSalary)&&(identical(other.postedAt, postedAt) || other.postedAt == postedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.type, type) || other.type == type)&&(identical(other.applicationCount, applicationCount) || other.applicationCount == applicationCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,company,location,minSalary,maxSalary,postedAt,isActive,type,applicationCount);

@override
String toString() {
  return 'JobDto(id: $id, title: $title, company: $company, location: $location, minSalary: $minSalary, maxSalary: $maxSalary, postedAt: $postedAt, isActive: $isActive, type: $type, applicationCount: $applicationCount)';
}


}

/// @nodoc
abstract mixin class $JobDtoCopyWith<$Res>  {
  factory $JobDtoCopyWith(JobDto value, $Res Function(JobDto) _then) = _$JobDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, String company, String location, double? minSalary, double? maxSalary, DateTime postedAt, bool isActive, int type, int applicationCount
});




}
/// @nodoc
class _$JobDtoCopyWithImpl<$Res>
    implements $JobDtoCopyWith<$Res> {
  _$JobDtoCopyWithImpl(this._self, this._then);

  final JobDto _self;
  final $Res Function(JobDto) _then;

/// Create a copy of JobDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? company = null,Object? location = null,Object? minSalary = freezed,Object? maxSalary = freezed,Object? postedAt = null,Object? isActive = null,Object? type = null,Object? applicationCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,minSalary: freezed == minSalary ? _self.minSalary : minSalary // ignore: cast_nullable_to_non_nullable
as double?,maxSalary: freezed == maxSalary ? _self.maxSalary : maxSalary // ignore: cast_nullable_to_non_nullable
as double?,postedAt: null == postedAt ? _self.postedAt : postedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,applicationCount: null == applicationCount ? _self.applicationCount : applicationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [JobDto].
extension JobDtoPatterns on JobDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobDto value)  $default,){
final _that = this;
switch (_that) {
case _JobDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobDto value)?  $default,){
final _that = this;
switch (_that) {
case _JobDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String company,  String location,  double? minSalary,  double? maxSalary,  DateTime postedAt,  bool isActive,  int type,  int applicationCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobDto() when $default != null:
return $default(_that.id,_that.title,_that.company,_that.location,_that.minSalary,_that.maxSalary,_that.postedAt,_that.isActive,_that.type,_that.applicationCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String company,  String location,  double? minSalary,  double? maxSalary,  DateTime postedAt,  bool isActive,  int type,  int applicationCount)  $default,) {final _that = this;
switch (_that) {
case _JobDto():
return $default(_that.id,_that.title,_that.company,_that.location,_that.minSalary,_that.maxSalary,_that.postedAt,_that.isActive,_that.type,_that.applicationCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String company,  String location,  double? minSalary,  double? maxSalary,  DateTime postedAt,  bool isActive,  int type,  int applicationCount)?  $default,) {final _that = this;
switch (_that) {
case _JobDto() when $default != null:
return $default(_that.id,_that.title,_that.company,_that.location,_that.minSalary,_that.maxSalary,_that.postedAt,_that.isActive,_that.type,_that.applicationCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobDto implements JobDto {
  const _JobDto({required this.id, required this.title, required this.company, required this.location, this.minSalary, this.maxSalary, required this.postedAt, required this.isActive, required this.type, required this.applicationCount});
  factory _JobDto.fromJson(Map<String, dynamic> json) => _$JobDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  String company;
@override final  String location;
@override final  double? minSalary;
@override final  double? maxSalary;
@override final  DateTime postedAt;
@override final  bool isActive;
@override final  int type;
@override final  int applicationCount;

/// Create a copy of JobDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobDtoCopyWith<_JobDto> get copyWith => __$JobDtoCopyWithImpl<_JobDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.company, company) || other.company == company)&&(identical(other.location, location) || other.location == location)&&(identical(other.minSalary, minSalary) || other.minSalary == minSalary)&&(identical(other.maxSalary, maxSalary) || other.maxSalary == maxSalary)&&(identical(other.postedAt, postedAt) || other.postedAt == postedAt)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.type, type) || other.type == type)&&(identical(other.applicationCount, applicationCount) || other.applicationCount == applicationCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,company,location,minSalary,maxSalary,postedAt,isActive,type,applicationCount);

@override
String toString() {
  return 'JobDto(id: $id, title: $title, company: $company, location: $location, minSalary: $minSalary, maxSalary: $maxSalary, postedAt: $postedAt, isActive: $isActive, type: $type, applicationCount: $applicationCount)';
}


}

/// @nodoc
abstract mixin class _$JobDtoCopyWith<$Res> implements $JobDtoCopyWith<$Res> {
  factory _$JobDtoCopyWith(_JobDto value, $Res Function(_JobDto) _then) = __$JobDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String company, String location, double? minSalary, double? maxSalary, DateTime postedAt, bool isActive, int type, int applicationCount
});




}
/// @nodoc
class __$JobDtoCopyWithImpl<$Res>
    implements _$JobDtoCopyWith<$Res> {
  __$JobDtoCopyWithImpl(this._self, this._then);

  final _JobDto _self;
  final $Res Function(_JobDto) _then;

/// Create a copy of JobDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? company = null,Object? location = null,Object? minSalary = freezed,Object? maxSalary = freezed,Object? postedAt = null,Object? isActive = null,Object? type = null,Object? applicationCount = null,}) {
  return _then(_JobDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,minSalary: freezed == minSalary ? _self.minSalary : minSalary // ignore: cast_nullable_to_non_nullable
as double?,maxSalary: freezed == maxSalary ? _self.maxSalary : maxSalary // ignore: cast_nullable_to_non_nullable
as double?,postedAt: null == postedAt ? _self.postedAt : postedAt // ignore: cast_nullable_to_non_nullable
as DateTime,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as int,applicationCount: null == applicationCount ? _self.applicationCount : applicationCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
