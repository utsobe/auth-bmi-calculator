// To parse this JSON data, do
//
//     final ratingListDownloadModel = ratingListDownloadModelFromJson(jsonString);

import 'dart:convert';

RatingListDownloadModel ratingListDownloadModelFromJson(String str) => RatingListDownloadModel.fromJson(json.decode(str));

String ratingListDownloadModelToJson(RatingListDownloadModel data) => json.encode(data.toJson());

class RatingListDownloadModel {
    List<DatumRatingListDownload>? data;
    bool? status;
    String? msg;

    RatingListDownloadModel({
        this.data,
        this.status,
        this.msg,
    });

    factory RatingListDownloadModel.fromJson(Map<String, dynamic> json) => RatingListDownloadModel(
        data: json["data"] == null ? [] : List<DatumRatingListDownload>.from(json["data"]!.map((x) => DatumRatingListDownload.fromJson(x))),
        status: json["status"],
        msg: json["msg"],
    );

    Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "status": status,
        "msg": msg,
    };
}

class DatumRatingListDownload {
    String? name;
    String? code;
    List<Scale>? scale;
    List<Question>? question;

    DatumRatingListDownload({
        this.name,
        this.code,
        this.scale,
        this.question,
    });

    factory DatumRatingListDownload.fromJson(Map<String, dynamic> json) => DatumRatingListDownload(
        name: json["name"],
        code: json["code"],
        scale: json["scale"] == null ? [] : List<Scale>.from(json["scale"]!.map((x) => Scale.fromJson(x))),
        question: json["question"] == null ? [] : List<Question>.from(json["question"]!.map((x) => Question.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "code": code,
        "scale": scale == null ? [] : List<dynamic>.from(scale!.map((x) => x.toJson())),
        "question": question == null ? [] : List<dynamic>.from(question!.map((x) => x.toJson())),
    };
}

class Question {
    String? cateName;
    String? cateCode;
    String? questionDetail;
    String? questionIndex;
    String? questionId;
    String? userAnswer;
    String? scalePoint;

    Question({
        this.cateName,
        this.cateCode,
        this.questionDetail,
        this.questionIndex,
        this.questionId,
        this.userAnswer,
        this.scalePoint
    });

    factory Question.fromJson(Map<String, dynamic> json) => Question(
        cateName: json["cate_name"],
        cateCode: json["cate_code"],
        questionDetail: json["question_detail"],
        questionIndex: json["question_index"],
        questionId: json["question_id"],
        userAnswer: json["user_answer"],
        scalePoint: json["scale_point"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "cate_name": cateName,
        "cate_code": cateCode,
        "question_detail": questionDetail,
        "question_index": questionIndex,
        "question_id": questionId,
        "user_answer": userAnswer,
        "scale_point": scalePoint
    };
}

class Scale {
    String? scaleName;
    String? scaleCode;
    String? scaleDetail;
    String? scalePoint;
    String? scaleShortform;
    String? scaleFile;
    String? scaleIndex;

    Scale({
        this.scaleName,
        this.scaleCode,
        this.scaleDetail,
        this.scalePoint,
        this.scaleShortform,
        this.scaleFile,
        this.scaleIndex,
    });

    factory Scale.fromJson(Map<String, dynamic> json) => Scale(
        scaleName: json["scale_name"],
        scaleCode: json["scale_code"],
        scaleDetail: json["scale_detail"],
        scalePoint: json["scale_point"],
        scaleShortform: json["scale_shortform"],
        scaleFile: json["scale_file"],
        scaleIndex: json["scale_index"],
    );

    Map<String, dynamic> toJson() => {
        "scale_name": scaleName,
        "scale_code": scaleCode,
        "scale_detail": scaleDetail,
        "scale_point": scalePoint,
        "scale_shortform": scaleShortform,
        "scale_file": scaleFile,
        "scale_index": scaleIndex,
    };
}
