// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentEntities _$DocumentEntitiesFromJson(Map<String, dynamic> json) {
  return _DocumentEntities.fromJson(json);
}

/// @nodoc
mixin _$DocumentEntities {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get dateCreated => throw _privateConstructorUsedError;
  String get dataUpdated => throw _privateConstructorUsedError;
  String? get folderId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentEntitiesCopyWith<DocumentEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentEntitiesCopyWith<$Res> {
  factory $DocumentEntitiesCopyWith(
          DocumentEntities value, $Res Function(DocumentEntities) then) =
      _$DocumentEntitiesCopyWithImpl<$Res, DocumentEntities>;
  @useResult
  $Res call(
      {String id,
      String name,
      String dateCreated,
      String dataUpdated,
      String? folderId});
}

/// @nodoc
class _$DocumentEntitiesCopyWithImpl<$Res, $Val extends DocumentEntities>
    implements $DocumentEntitiesCopyWith<$Res> {
  _$DocumentEntitiesCopyWithImpl(this._value, this._then);

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
    Object? dataUpdated = null,
    Object? folderId = freezed,
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
      dataUpdated: null == dataUpdated
          ? _value.dataUpdated
          : dataUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DocumentEntitiesCopyWith<$Res>
    implements $DocumentEntitiesCopyWith<$Res> {
  factory _$$_DocumentEntitiesCopyWith(
          _$_DocumentEntities value, $Res Function(_$_DocumentEntities) then) =
      __$$_DocumentEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String dateCreated,
      String dataUpdated,
      String? folderId});
}

/// @nodoc
class __$$_DocumentEntitiesCopyWithImpl<$Res>
    extends _$DocumentEntitiesCopyWithImpl<$Res, _$_DocumentEntities>
    implements _$$_DocumentEntitiesCopyWith<$Res> {
  __$$_DocumentEntitiesCopyWithImpl(
      _$_DocumentEntities _value, $Res Function(_$_DocumentEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? dateCreated = null,
    Object? dataUpdated = null,
    Object? folderId = freezed,
  }) {
    return _then(_$_DocumentEntities(
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
      dataUpdated: null == dataUpdated
          ? _value.dataUpdated
          : dataUpdated // ignore: cast_nullable_to_non_nullable
              as String,
      folderId: freezed == folderId
          ? _value.folderId
          : folderId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentEntities
    with DiagnosticableTreeMixin
    implements _DocumentEntities {
  const _$_DocumentEntities(
      {required this.id,
      required this.name,
      required this.dateCreated,
      required this.dataUpdated,
      this.folderId = null});

  factory _$_DocumentEntities.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentEntitiesFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String dateCreated;
  @override
  final String dataUpdated;
  @override
  @JsonKey()
  final String? folderId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DocumentEntities(id: $id, name: $name, dateCreated: $dateCreated, dataUpdated: $dataUpdated, folderId: $folderId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DocumentEntities'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('dateCreated', dateCreated))
      ..add(DiagnosticsProperty('dataUpdated', dataUpdated))
      ..add(DiagnosticsProperty('folderId', folderId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentEntities &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dataUpdated, dataUpdated) ||
                other.dataUpdated == dataUpdated) &&
            (identical(other.folderId, folderId) ||
                other.folderId == folderId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, dateCreated, dataUpdated, folderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DocumentEntitiesCopyWith<_$_DocumentEntities> get copyWith =>
      __$$_DocumentEntitiesCopyWithImpl<_$_DocumentEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentEntitiesToJson(
      this,
    );
  }
}

abstract class _DocumentEntities implements DocumentEntities {
  const factory _DocumentEntities(
      {required final String id,
      required final String name,
      required final String dateCreated,
      required final String dataUpdated,
      final String? folderId}) = _$_DocumentEntities;

  factory _DocumentEntities.fromJson(Map<String, dynamic> json) =
      _$_DocumentEntities.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get dateCreated;
  @override
  String get dataUpdated;
  @override
  String? get folderId;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentEntitiesCopyWith<_$_DocumentEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
