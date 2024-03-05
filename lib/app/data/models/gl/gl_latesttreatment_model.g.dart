// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gl_latesttreatment_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlLatestTreatModelAdapter extends TypeAdapter<GlLatestTreatModel> {
  @override
  final int typeId = 5;

  @override
  GlLatestTreatModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GlLatestTreatModel(
      treatmentLatestDt: fields[0] as DateTime?,
      treatmentName: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, GlLatestTreatModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.treatmentLatestDt)
      ..writeByte(1)
      ..write(obj.treatmentName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlLatestTreatModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
