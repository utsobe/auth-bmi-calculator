// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginModelAdapter extends TypeAdapter<LoginModel> {
  @override
  final int typeId = 2;

  @override
  LoginModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LoginModel(
      token: fields[0] as String?,
      encryptedUser: fields[1] as String?,
      serverId: fields[2] as String?,
      userId: fields[3] as String?,
      userSid: fields[4] as String?,
      userName: fields[5] as String?,
      userImage: fields[6] as String?,
      userPhoneNum: fields[7] as String?,
      userIc: fields[8] as String?,
      userEmail: fields[9] as String?,
      userAddr: fields[10] as String?,
      schName: fields[11] as String?,
      schAddr: fields[12] as String?,
      userStatus: fields[13] as int?,
      userCate: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LoginModel obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.encryptedUser)
      ..writeByte(2)
      ..write(obj.serverId)
      ..writeByte(3)
      ..write(obj.userId)
      ..writeByte(4)
      ..write(obj.userSid)
      ..writeByte(5)
      ..write(obj.userName)
      ..writeByte(6)
      ..write(obj.userImage)
      ..writeByte(7)
      ..write(obj.userPhoneNum)
      ..writeByte(8)
      ..write(obj.userIc)
      ..writeByte(9)
      ..write(obj.userEmail)
      ..writeByte(10)
      ..write(obj.userAddr)
      ..writeByte(11)
      ..write(obj.schName)
      ..writeByte(12)
      ..write(obj.schAddr)
      ..writeByte(13)
      ..write(obj.userStatus)
      ..writeByte(14)
      ..write(obj.userCate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
