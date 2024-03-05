// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'package:hive/hive.dart';
import 'dart:convert';

part 'login_model.g.dart';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

@HiveType(typeId: 2)
class LoginModel {
    @HiveField(0) String? token;
    @HiveField(1) String? encryptedUser;
    @HiveField(2) String? serverId;
    @HiveField(3) String? userId;
    @HiveField(4) String? userSid;
    @HiveField(5) String? userName;
    @HiveField(6) String? userImage;
    @HiveField(7) String? userPhoneNum;
    @HiveField(8) String? userIc;
    @HiveField(9) String? userEmail;
    @HiveField(10) String? userAddr;
    @HiveField(11) String? schName;
    @HiveField(12) String? schAddr;
    @HiveField(13) int? userStatus;
    @HiveField(14) String? userCate;

    LoginModel({
         this.token,
         this.encryptedUser,
         this.serverId,
         this.userId,
         this.userSid,
         this.userName,
         this.userImage,
         this.userPhoneNum,
         this.userIc,
         this.userEmail,
         this.userAddr,
         this.schName,
         this.schAddr,
         this.userStatus,
         this.userCate,
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        token: json["token"],
        encryptedUser: json["encrypted_user"],
        serverId: json["server_id"],
        userId: json["user_id"],
        userSid: json["user_sid"],
        userName: json["user_name"],
        userImage: json["user_image"] ?? '',
        userPhoneNum: json["user_phone_num"],
        userIc: json["user_ic"],
        userEmail: json["user_email"],
        userAddr: json["user_addr"],
        schName: json["sch_name"],
        schAddr: json["sch_addr"],
        userStatus: json["user_status"],
        userCate: json["user_category"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "encrypted_user": encryptedUser,
        "server_id": serverId,
        "user_id": userId,
        "user_sid": userSid,
        "user_name": userName,
        "user_image": userImage ?? '',
        "user_phone_num": userPhoneNum ?? '',
        "user_ic": userIc ?? '',
        "user_email": userEmail ?? '',
        "user_addr": userAddr ?? '',
        "sch_name": schName ?? '',
        "sch_addr": schAddr ?? '',
        "user_status": userStatus,
        "user_category": userCate,
    };
}
