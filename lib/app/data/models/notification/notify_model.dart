// To parse this JSON data, do
//
//     final notificationModel = notificationModelFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';
part 'notify_model.g.dart';

NotificationModel notificationModelFromJson(String str) => NotificationModel.fromJson(json.decode(str));

String notificationModelToJson(NotificationModel data) => json.encode(data.toJson());


class NotificationModel {
    String? totalrecord;
    String? currentpage;
    int? totalpage;
    bool? status;
    String? msg;
    List<DatumNotify>? data;

    NotificationModel({
        this.totalrecord,
        this.currentpage,
        this.totalpage,
        this.status,
        this.msg,
        this.data,
    });

    factory NotificationModel.fromJson(Map<String, dynamic> json) => NotificationModel(
        totalrecord: json["totalrecord"],
        currentpage: json["currentpage"],
        totalpage: json["totalpage"],
        status: json["status"],
        msg: json["msg"],
        data: List<DatumNotify>.from(json["data"].map((x) => DatumNotify.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "totalrecord": totalrecord,
        "currentpage": currentpage,
        "totalpage": totalpage,
        "status": status,
        "msg": msg,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

@HiveType(typeId: 8)
class DatumNotify {
    @HiveField(0) String? contentTit;
    @HiveField(1) String? contentId;
    @HiveField(2) String? contentTm;
    @HiveField(3) DateTime? contentDt;
    @HiveField(4) String? contentMsg;
    @HiveField(5) String? contentFile1;
    @HiveField(6) String? contentFile2;
    @HiveField(7) String? contentFile3;
    @HiveField(8) String? contentIsread;

    DatumNotify({
        this.contentTit,
        this.contentId,
        this.contentTm,
        this.contentDt,
        this.contentMsg,
        this.contentFile1,
        this.contentFile2,
        this.contentFile3,
        this.contentIsread
    });

    factory DatumNotify.fromJson(Map<String, dynamic> json) => DatumNotify(
        contentTit: json["content_tit"],
        contentId: json["content_id"],
        contentTm: json["content_tm"],
        contentDt: DateTime.parse(json["content_dt"]),
        contentMsg: json["content_msg"],
        contentFile1: json["content_file1"],
        contentFile2: json["content_file2"],
        contentFile3: json["content_file3"],
        contentIsread: json["content_isread"],
    );

    Map<String, dynamic> toJson() => {
        "content_tit": contentTit,
        "content_id": contentId,
        "content_tm": contentTm,
        "content_dt":  "${contentDt!.year.toString().padLeft(4, '0')}-${contentDt!.month.toString().padLeft(2, '0')}-${contentDt!.day.toString().padLeft(2, '0')}",
        "content_msg": contentMsg,
        "content_file1": contentFile1,
        "content_file2": contentFile2,
        "content_file3": contentFile3,
        "content_isread": contentIsread
    };
}
