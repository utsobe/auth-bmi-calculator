// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DatumNotifyAdapter extends TypeAdapter<DatumNotify> {
  @override
  final int typeId = 8;

  @override
  DatumNotify read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DatumNotify(
      contentTit: fields[0] as String?,
      contentId: fields[1] as String?,
      contentTm: fields[2] as String?,
      contentDt: fields[3] as DateTime?,
      contentMsg: fields[4] as String?,
      contentFile1: fields[5] as String?,
      contentFile2: fields[6] as String?,
      contentFile3: fields[7] as String?,
      contentIsread: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DatumNotify obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.contentTit)
      ..writeByte(1)
      ..write(obj.contentId)
      ..writeByte(2)
      ..write(obj.contentTm)
      ..writeByte(3)
      ..write(obj.contentDt)
      ..writeByte(4)
      ..write(obj.contentMsg)
      ..writeByte(5)
      ..write(obj.contentFile1)
      ..writeByte(6)
      ..write(obj.contentFile2)
      ..writeByte(7)
      ..write(obj.contentFile3)
      ..writeByte(8)
      ..write(obj.contentIsread);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DatumNotifyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
