import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_entities.freezed.dart';
part 'document_entities.g.dart';

@freezed
class DocumentEntities with _$DocumentEntities {
  const factory DocumentEntities({
    required String id,
    required String name,
    required String dateCreated,
    required String dataUpdated,
    @Default(null) String? folderId,
  }) = _DocumentEntities;



  factory DocumentEntities.fromJson(Map<String, dynamic> json) =>
      _$DocumentEntitiesFromJson(json);
}
