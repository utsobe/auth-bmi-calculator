// To parse this JSON data, do
//
//     final raceModel = raceModelFromJson(jsonString);

import 'dart:convert';

RaceModel raceModelFromJson(String str) => RaceModel.fromJson(json.decode(str));

String raceModelToJson(RaceModel data) => json.encode(data.toJson());

class RaceModel {
 
  final int? status;
  final String? msg;
  final List<RaceDatum>? data;

  RaceModel({
    this.status,
    this.msg,
    this.data,
  });

  factory RaceModel.fromJson(Map<String, dynamic> json) => RaceModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<RaceDatum>.from(
                json["data"]!.map((x) => RaceDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class RaceDatum {
  final String? prm;
  final String? code;

  RaceDatum({
    this.prm,
    this.code,
  });

  factory RaceDatum.fromJson(Map<String, dynamic> json) => RaceDatum(
        prm: json["prm"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "prm": prm,
        "code": code,
      };
}
