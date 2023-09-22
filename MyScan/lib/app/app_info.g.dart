// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppInfoAdapter extends TypeAdapter<AppInfo> {
  @override
  final int typeId = 0;

  @override
  AppInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppInfo()..isFirst = fields[0] as bool;
  }

  @override
  void write(BinaryWriter writer, AppInfo obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isFirst);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
