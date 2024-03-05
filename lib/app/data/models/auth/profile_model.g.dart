// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProfileModelAdapter extends TypeAdapter<ProfileModel> {
  @override
  final int typeId = 6;

  @override
  ProfileModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProfileModel(
      name: fields[0] as String?,
      img: fields[1] as String?,
      phoneNum: fields[2] as String?,
      email: fields[3] as String?,
      category: fields[4] as String?,
      status: fields[5] as int?,
      dob: fields[6] as DateTime?,
      gender: fields[7] as String?,
      genderCode: fields[12] as int?,
      race: fields[8] as String?,
      nationality: fields[9] as String?,
      addr: fields[10] as Addr?,
      ic: fields[11] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ProfileModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.img)
      ..writeByte(2)
      ..write(obj.phoneNum)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.category)
      ..writeByte(5)
      ..write(obj.status)
      ..writeByte(6)
      ..write(obj.dob)
      ..writeByte(7)
      ..write(obj.gender)
      ..writeByte(8)
      ..write(obj.race)
      ..writeByte(9)
      ..write(obj.nationality)
      ..writeByte(10)
      ..write(obj.addr)
      ..writeByte(11)
      ..write(obj.ic)
      ..writeByte(12)
      ..write(obj.genderCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProfileModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AddrAdapter extends TypeAdapter<Addr> {
  @override
  final int typeId = 7;

  @override
  Addr read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Addr(
      fullAddress: fields[0] as String?,
      line1: fields[1] as String?,
      line2: fields[2] as String?,
      line3: fields[3] as String?,
      city: fields[4] as String?,
      zipcode: fields[5] as String?,
      district: fields[6] as String?,
      state: fields[7] as String?,
      country: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Addr obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.fullAddress)
      ..writeByte(1)
      ..write(obj.line1)
      ..writeByte(2)
      ..write(obj.line2)
      ..writeByte(3)
      ..write(obj.line3)
      ..writeByte(4)
      ..write(obj.city)
      ..writeByte(5)
      ..write(obj.zipcode)
      ..writeByte(6)
      ..write(obj.district)
      ..writeByte(7)
      ..write(obj.state)
      ..writeByte(8)
      ..write(obj.country);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddrAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
