// To parse this JSON data, do
//
//     final passwordConfigModel = passwordConfigModelFromJson(jsonString);

import 'dart:convert';

PasswordConfigModel passwordConfigModelFromJson(String str) => PasswordConfigModel.fromJson(json.decode(str));

String passwordConfigModelToJson(PasswordConfigModel data) => json.encode(data.toJson());

class PasswordConfigModel {
    String? appcode;
    bool? emailReminderEnable;
    int? daysExpiry;
    int? historyStore;
    int? daysRemindBeforeExpiry;
    int? minPassword;
    bool? includeUppercase;
    bool? includeNumber;
    bool? includeSymbol;

    PasswordConfigModel({
        this.appcode,
        this.emailReminderEnable,
        this.daysExpiry,
        this.historyStore,
        this.daysRemindBeforeExpiry,
        this.minPassword,
        this.includeUppercase,
        this.includeNumber,
        this.includeSymbol,
    });

    factory PasswordConfigModel.fromJson(Map<String, dynamic> json) => PasswordConfigModel(
        appcode: json["appcode"],
        emailReminderEnable: json["email_reminder_enable"],
        daysExpiry: json["days_expiry"],
        historyStore: json["history_store"],
        daysRemindBeforeExpiry: json["days_remind_before_expiry"],
        minPassword: json["min_password"],
        includeUppercase: json["include_uppercase"],
        includeNumber: json["include_number"],
        includeSymbol: json["include_symbol"],
    );

    Map<String, dynamic> toJson() => {
        "appcode": appcode,
        "email_reminder_enable": emailReminderEnable,
        "days_expiry": daysExpiry,
        "history_store": historyStore,
        "days_remind_before_expiry": daysRemindBeforeExpiry,
        "min_password": minPassword,
        "include_uppercase": includeUppercase,
        "include_number": includeNumber,
        "include_symbol": includeSymbol,
    };
}
