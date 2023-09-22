// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_entities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DocumentEntities _$$_DocumentEntitiesFromJson(Map<String, dynamic> json) =>
    _$_DocumentEntities(
      id: json['id'] as String,
      name: json['name'] as String,
      dateCreated: json['dateCreated'] as String,
      dataUpdated: json['dataUpdated'] as String,
      folderId: json['folderId'] as String? ?? null,
    );

Map<String, dynamic> _$$_DocumentEntitiesToJson(_$_DocumentEntities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dateCreated': instance.dateCreated,
      'dataUpdated': instance.dataUpdated,
      'folderId': instance.folderId,
    };
