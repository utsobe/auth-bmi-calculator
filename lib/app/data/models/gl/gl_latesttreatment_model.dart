// To parse this JSON data, do
//
//     final glLatestTreatModel = glLatestTreatModelFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';
part 'gl_latesttreatment_model.g.dart';

List<GlLatestTreatModel> glLatestTreatModelFromJson(String str) => List<GlLatestTreatModel>.from(json.decode(str).map((x) => GlLatestTreatModel.fromJson(x)));

String glLatestTreatModelToJson(List<GlLatestTreatModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 5)
class GlLatestTreatModel {
    @HiveField(0) DateTime? treatmentLatestDt;
    @HiveField(1) String? treatmentName;

    GlLatestTreatModel({
        this.treatmentLatestDt,
        this.treatmentName,
    });

    factory GlLatestTreatModel.fromJson(Map<String, dynamic> json) => GlLatestTreatModel(
        treatmentLatestDt: DateTime.parse(json["treatment_latest_dt"]),
        treatmentName: json["treatment_name"],
    );

    Map<String, dynamic> toJson() => {
        "treatment_latest_dt": treatmentLatestDt!.toIso8601String(),
        "treatment_name": treatmentName,
    };
}
