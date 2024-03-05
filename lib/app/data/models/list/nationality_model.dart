// To parse this JSON data, do
//
//     final raceModel = raceModelFromJson(jsonString);

import 'dart:convert';

NationalityModel nationalityModelFromJson(String str) => NationalityModel.fromJson(json.decode(str));

String nationalityModelToJson(NationalityModel data) => json.encode(data.toJson());

class NationalityModel {
 
  final int? status;
  final String? msg;
  final List<NationalityDatum>? data;

  NationalityModel({
    this.status,
    this.msg,
    this.data,
  });

  factory NationalityModel.fromJson(Map<String, dynamic> json) => NationalityModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<NationalityDatum>.from(
                json["data"]!.map((x) => NationalityDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class NationalityDatum {
  final String? prm;
  final String? code;

  NationalityDatum({
    this.prm,
    this.code,
  });

  factory NationalityDatum.fromJson(Map<String, dynamic> json) => NationalityDatum(
        prm: json["prm"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "prm": prm,
        "code": code,
      };
}
