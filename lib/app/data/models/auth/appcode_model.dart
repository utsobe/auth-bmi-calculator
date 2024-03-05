// To parse this JSON data, do
//
//     final appcodeModel = appcodeModelFromJson(jsonString);

import 'package:hive/hive.dart';
import 'dart:convert';

part 'appcode_model.g.dart';

AppcodeModel appcodeModelFromJson(String str) => AppcodeModel.fromJson(json.decode(str));

String appcodeModelToJson(AppcodeModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class AppcodeModel {
  
    @HiveField(0) String encryptedKey;
    @HiveField(1) String serverId;
    @HiveField(2) String sid;
    @HiveField(3) String clientAppname;
    @HiveField(4) String clientAppengine;
    @HiveField(5) String clientTel;
    @HiveField(6) String clientRegno;
    @HiveField(7) String clientAddress;
    @HiveField(8) String clientPostcode;
    @HiveField(9) String clientDistrict;
    @HiveField(10) String clientState;
    @HiveField(11) String customer;
    @HiveField(12) String clientLogo;
    @HiveField(13) String appConfig;
    @HiveField(14) String url;

    AppcodeModel({
        required this.encryptedKey,
        required this.serverId,
        required this.sid,
        required this.clientAppname,
        required this.clientAppengine,
        required this.clientTel,
        required this.clientRegno,
        required this.clientAddress,
        required this.clientPostcode,
        required this.clientDistrict,
        required this.clientState,
        required this.customer,
        required this.clientLogo,
        required this.appConfig,
        required this.url,
    });

    factory AppcodeModel.fromJson(Map<String, dynamic> json) => AppcodeModel(
        encryptedKey: json["encrypted_key"],
        serverId: json["server_id"],
        sid: json["sid"],
        clientAppname: json["client_appname"],
        clientAppengine: json["client_appengine"],
        clientTel: json["client_tel"],
        clientRegno: json["client_regno"],
        clientAddress: json["client_address"],
        clientPostcode: json["client_postcode"],
        clientDistrict: json["client_district"],
        clientState: json["client_state"],
        customer: json["customer"],
        clientLogo: json["client_logo"],
        appConfig: json["app_config"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "encrypted_key": encryptedKey,
        "server_id": serverId,
        "sid": sid,
        "client_appname": clientAppname,
        "client_appengine": clientAppengine,
        "client_tel": clientTel,
        "client_regno": clientRegno,
        "client_address": clientAddress,
        "client_postcode": clientPostcode,
        "client_district": clientDistrict,
        "client_state": clientState,
        "customer": customer,
        "client_logo": clientLogo,
        "app_config": appConfig,
        "url": url,
    };
}
