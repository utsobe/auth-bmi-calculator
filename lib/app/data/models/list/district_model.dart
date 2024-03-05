// To parse this JSON data, do
//
//     final stateModel = stateModelFromJson(jsonString);

import 'dart:convert';

DistrictModel districtModelFromJson(String str) =>
    DistrictModel.fromJson(json.decode(str));

String districtModelToJson(DistrictModel data) => json.encode(data.toJson());

class DistrictModel {
  final int? status;
  final String? msg;
  final List<DatumDistrict>? data;

  DistrictModel({
    this.status,
    this.msg,
    this.data,
  });

  factory DistrictModel.fromJson(Map<String, dynamic> json) => DistrictModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<DatumDistrict>.from(json["data"]!.map((x) => DatumDistrict.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class DatumDistrict {
  final String? district;
 
  DatumDistrict({
    this.district,
  });

  factory DatumDistrict.fromJson(Map<String, dynamic> json) => DatumDistrict(
        district: json["district"],
      );

  Map<String, dynamic> toJson() => {
        "district": district,
      };
}
