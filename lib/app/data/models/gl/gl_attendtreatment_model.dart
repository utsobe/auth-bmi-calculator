// To parse this JSON data, do
//
//     final glAttendModel = glAttendModelFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';
part 'gl_attendtreatment_model.g.dart';

List<GlAttendModel> glAttendModelFromJson(String str) => List<GlAttendModel>.from(json.decode(str).map((x) => GlAttendModel.fromJson(x)));

String glAttendModelToJson(List<GlAttendModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 4)
class GlAttendModel {
     @HiveField(0) DateTime? date;
     @HiveField(1) String? clockin;
     @HiveField(2) String? clockout;

    GlAttendModel({
        this.date,
        this.clockin,
        this.clockout,
    });

    factory GlAttendModel.fromJson(Map<String, dynamic> json) => GlAttendModel(
        date: DateTime.parse(json["date"]),
        clockin: json["clockin"],
        clockout: json["clockout"],
    );

    Map<String, dynamic> toJson() => {
        "date": "${date?.year.toString().padLeft(4, '0')}-${date?.month.toString().padLeft(2, '0')}-${date?.day.toString().padLeft(2, '0')}",
        "clockin": clockin,
        "clockout": clockout,
    };
}
