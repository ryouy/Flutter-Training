import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'folder_entities.freezed.dart';
part 'folder_entities.g.dart';

@freezed
class FolderEntity with _$FolderEntity {
  const factory FolderEntity({
    required String id,
    required String name,
    required String dateCreated,
    required String dateUpdated
  }) = _FolderEntity;



  factory FolderEntity.fromJson(Map<String, dynamic> json) =>
      _$FolderEntityFromJson(json);
}
