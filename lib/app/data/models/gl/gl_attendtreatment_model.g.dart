// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gl_attendtreatment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlAttendModelAdapter extends TypeAdapter<GlAttendModel> {
  @override
  final int typeId = 4;

  @override
  GlAttendModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GlAttendModel(
      date: fields[0] as DateTime?,
      clockin: fields[1] as String?,
      clockout: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, GlAttendModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.clockin)
      ..writeByte(2)
      ..write(obj.clockout);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlAttendModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
