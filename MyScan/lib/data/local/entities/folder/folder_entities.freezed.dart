// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folder_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FolderEntity _$FolderEntityFromJson(Map<String, dynamic> json) {
  return _FolderEntity.fromJson(json);
}

/// @nodoc
mixin _$FolderEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get dateCreated => throw _privateConstructorUsedError;
  String get dateUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderEntityCopyWith<FolderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderEntityCopyWith<$Res> {
  factory $FolderEntityCopyWith(
          FolderEntity value, $Res Function(FolderEntity) then) =
      _$FolderEntityCopyWithImpl<$Res, FolderEntity>;
  @useResult
  $Res call({String id, String name, String dateCreated, String dateUpdated});
}

/// @nodoc
class _$FolderEntityCopyWithImpl<$Res, $Val extends FolderEntity>
    implements $FolderEntityCopyWith<$Res> {
  _$FolderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FolderEntityCopyWith<$Res>
    implements $FolderEntityCopyWith<$Res> {
  factory _$$_FolderEntityCopyWith(
          _$_FolderEntity value, $Res Function(_$_FolderEntity) then) =
      __$$_FolderEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String dateCreated, String dateUpdated});
}

/// @nodoc
class __$$_FolderEntityCopyWithImpl<$Res>
    extends _$FolderEntityCopyWithImpl<$Res, _$_FolderEntity>
    implements _$$_FolderEntityCopyWith<$Res> {
  __$$_FolderEntityCopyWithImpl(
      _$_FolderEntity _value, $Res Function(_$_FolderEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dateCreated = null,
    Object? dateUpdated = null,
  }) {
    return _then(_$_FolderEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String,
      dateUpdated: null == dateUpdated
          ? _value.dateUpdated
          : dateUpdated // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FolderEntity with DiagnosticableTreeMixin implements _FolderEntity {
  const _$_FolderEntity(
      {required this.id,
      required this.name,
      required this.dateCreated,
      required this.dateUpdated});

  factory _$_FolderEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FolderEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String dateCreated;
  @override
  final String dateUpdated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FolderEntity(id: $id, name: $name, dateCreated: $dateCreated, dateUpdated: $dateUpdated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FolderEntity'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('dateCreated', dateCreated))
      ..add(DiagnosticsProperty('dateUpdated', dateUpdated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FolderEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateUpdated, dateUpdated) ||
                other.dateUpdated == dateUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, dateCreated, dateUpdated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FolderEntityCopyWith<_$_FolderEntity> get copyWith =>
      __$$_FolderEntityCopyWithImpl<_$_FolderEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FolderEntityToJson(
      this,
    );
  }
}

abstract class _FolderEntity implements FolderEntity {
  const factory _FolderEntity(
      {required final String id,
      required final String name,
      required final String dateCreated,
      required final String dateUpdated}) = _$_FolderEntity;

  factory _FolderEntity.fromJson(Map<String, dynamic> json) =
      _$_FolderEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get dateCreated;
  @override
  String get dateUpdated;
  @override
  @JsonKey(ignore: true)
  _$$_FolderEntityCopyWith<_$_FolderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
