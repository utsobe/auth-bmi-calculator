// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gl_active_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlActiveModelAdapter extends TypeAdapter<GlActiveModel> {
  @override
  final int typeId = 3;

  @override
  GlActiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GlActiveModel(
      glId: fields[0] as String?,
      glGuid: fields[1] as String?,
      treatmentName: fields[2] as String?,
      treatmentAllocate: fields[3] as String?,
      treatmentSlotuses: fields[4] as String?,
      treatmentStatus: fields[5] as String?,
      treatmentAmount: fields[6] as String?,
      treatmentAmountpertreat: fields[7] as String?,
      treatmentUtilizedamount: fields[8] as String?,
      treatmentMonth: fields[9] as String?,
      treatmentYear: fields[10] as String?,
      treatmentCentre: fields[11] as String?,
      treatmentPdf: fields[12] as String?,
      treatmentAttachment: (fields[13] as List?)?.cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, GlActiveModel obj) {
    writer
      ..writeByte(14)
      ..writeByte(0)
      ..write(obj.glId)
      ..writeByte(1)
      ..write(obj.glGuid)
      ..writeByte(2)
      ..write(obj.treatmentName)
      ..writeByte(3)
      ..write(obj.treatmentAllocate)
      ..writeByte(4)
      ..write(obj.treatmentSlotuses)
      ..writeByte(5)
      ..write(obj.treatmentStatus)
      ..writeByte(6)
      ..write(obj.treatmentAmount)
      ..writeByte(7)
      ..write(obj.treatmentAmountpertreat)
      ..writeByte(8)
      ..write(obj.treatmentUtilizedamount)
      ..writeByte(9)
      ..write(obj.treatmentMonth)
      ..writeByte(10)
      ..write(obj.treatmentYear)
      ..writeByte(11)
      ..write(obj.treatmentCentre)
      ..writeByte(12)
      ..write(obj.treatmentPdf)
      ..writeByte(13)
      ..write(obj.treatmentAttachment);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlActiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
