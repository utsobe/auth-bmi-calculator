// To parse this JSON data, do
//
//     final getGender = getGenderFromJson(jsonString);

import 'dart:convert';

GetGender getGenderFromJson(String str) => GetGender.fromJson(json.decode(str));

String getGenderToJson(GetGender data) => json.encode(data.toJson());

class GetGender {
  GetGender({
    this.status,
    this.msg,
    this.data,
  });

  int? status;
  String? msg;
  List<DatumGender>? data;

  factory GetGender.fromJson(Map<String, dynamic> json) => GetGender(
    status: json["status"],
    msg: json["msg"],
    data: List<DatumGender>.from(json["data"].map((x) => DatumGender.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "msg": msg,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class DatumGender {
    String? prm;
    int? code;

    DatumGender({
        this.prm,
        this.code,
    });

    factory DatumGender.fromJson(Map<String, dynamic> json) => DatumGender(
        prm: json["prm"],
        code: json["code"],
    );

    Map<String, dynamic> toJson() => {
        "prm": prm,
        "code": code,
    };
}

