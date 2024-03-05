// To parse this JSON data, do
//
//     final glActiveModel = glActiveModelFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';
part 'gl_active_model.g.dart';

List<GlActiveModel> glActiveModelFromJson(String str) => List<GlActiveModel>.from(json.decode(str).map((x) => GlActiveModel.fromJson(x)));

String glActiveModelToJson(List<GlActiveModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 3)
class GlActiveModel {
    @HiveField(0) String? glId;
    @HiveField(1) String? glGuid;
    @HiveField(2) String? treatmentName;
    @HiveField(3) String? treatmentAllocate;
    @HiveField(4) String? treatmentSlotuses;
    @HiveField(5) String? treatmentStatus;
    @HiveField(6) String? treatmentAmount;
    @HiveField(7) String? treatmentAmountpertreat;
    @HiveField(8) String? treatmentUtilizedamount;
    @HiveField(9) String? treatmentMonth;
    @HiveField(10)  String? treatmentYear;
    @HiveField(11)  String? treatmentCentre;
    @HiveField(12) String? treatmentPdf;
    @HiveField(13) List<dynamic>? treatmentAttachment;

    GlActiveModel({
        this.glId,
        this.glGuid,
        this.treatmentName,
        this.treatmentAllocate,
        this.treatmentSlotuses,
        this.treatmentStatus,
        this.treatmentAmount,
        this.treatmentAmountpertreat,
        this.treatmentUtilizedamount,
        this.treatmentMonth,
        this.treatmentYear,
        this.treatmentCentre,
        this.treatmentPdf,
        this.treatmentAttachment,
    });

    factory GlActiveModel.fromJson(Map<String, dynamic> json) => GlActiveModel(
        glId: json["gl_id"],
        glGuid: json["gl_guid"],
        treatmentName: json["treatment_name"],
        treatmentAllocate: json["treatment_allocate"],
        treatmentSlotuses: json["treatment_slotuses"],
        treatmentStatus: json["treatment_status"],
        treatmentAmount: json["treatment_amount"],
        treatmentAmountpertreat: json["treatment_amountpertreat"],
        treatmentUtilizedamount: json["treatment_utilizedamount"],
        treatmentMonth: json["treatment_Month"],
        treatmentYear: json["treatment_Year"],
        treatmentCentre: json["treatment_centre"],
        treatmentPdf: json["treatment_pdf"],
        treatmentAttachment: List<dynamic>.from(json["treatment_attachment"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "gl_id": glId,
        "gl_guid": glGuid,
        "treatment_name": treatmentName,
        "treatment_allocate": treatmentAllocate,
        "treatment_slotuses": treatmentSlotuses,
        "treatment_status": treatmentStatus,
        "treatment_amount": treatmentAmount,
        "treatment_amountpertreat": treatmentAmountpertreat,
        "treatment_utilizedamount": treatmentUtilizedamount,
        "treatment_Month": treatmentMonth,
        "treatment_Year": treatmentYear,
        "treatment_centre": treatmentCentre,
        "treatment_pdf": treatmentPdf,
        "treatment_attachment": List<dynamic>.from(treatmentAttachment!.map((x) => x)),
    };
}
