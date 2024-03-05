// To parse this JSON data, do
//
//     final stateModel = stateModelFromJson(jsonString);

import 'dart:convert';

// part 'state_model.g.dart';

StateModel stateModelFromJson(String str) =>
    StateModel.fromJson(json.decode(str));

String stateModelToJson(StateModel data) => json.encode(data.toJson());

class StateModel {
  final int? status;
  final String? msg;
  final List<DatumState>? data;

  StateModel({
    this.status,
    this.msg,
    this.data,
  });

  factory StateModel.fromJson(Map<String, dynamic> json) => StateModel(
        status: json["status"],
        msg: json["msg"],
        data: json["data"] == null
            ? []
            : List<DatumState>.from(json["data"]!.map((x) => DatumState.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class DatumState {
  final String? state;
 
  DatumState({
    this.state,
  });

  factory DatumState.fromJson(Map<String, dynamic> json) => DatumState(
        state: json["state"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
      };
}
