// To parse this JSON data, do
//
//     final profileModel = profileModelFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';
part 'profile_model.g.dart';

ProfileModel profileModelFromJson(String str) => ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

@HiveType(typeId: 6)
class ProfileModel {
    @HiveField(0) String? name;
    @HiveField(1) String? img;
    @HiveField(2) String? phoneNum;
    @HiveField(3) String? email;
    @HiveField(4) String? category;
    @HiveField(5) int? status;
    @HiveField(6) DateTime? dob;
    @HiveField(7) String? gender;
    @HiveField(8) String? race;
    @HiveField(9) String? nationality;
    @HiveField(10) Addr? addr;
    @HiveField(11) String? ic;
    @HiveField(12) int? genderCode;

    ProfileModel({
        this.name,
        this.img,
        this.phoneNum,
        this.email,
        this.category,
        this.status,
        this.dob,
        this.gender,
        this.genderCode,
        this.race,
        this.nationality,
        this.addr,
        this.ic
    });

    factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json["name"] ?? '',
        ic: json["ic"] ?? '',
        img: json["img"] ?? '',
        phoneNum: json["phone_num"] ?? '',
        email: json["email"] ?? '',
        category: json["category"] ?? '',
        status: json["status"] ?? '',
        dob: DateTime.parse(json["dob"] ?? '0000-00-00'),
        gender: json["gender"] ?? '',
        genderCode: json["gender_code"] ?? 0,
        race: json["race"] ?? '',
        nationality: json["nationality"] ?? '',
        addr: Addr.fromJson(json["addr"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "ic": ic,
        "img": img,
        "phone_num": phoneNum,
        "email": email,
        "category": category,
        "status": status,
        "dob": "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
        "gender": gender,
        "gender_code": genderCode,
        "race": race,
        "nationality": nationality,
        "addr": addr!.toJson(),
    };
}

@HiveType(typeId: 7)
class Addr {
    @HiveField(0) String? fullAddress;
    @HiveField(1) String? line1;
    @HiveField(2) String? line2;
    @HiveField(3) String? line3;
    @HiveField(4) String? city;
    @HiveField(5) String? zipcode;
    @HiveField(6) String? district;
    @HiveField(7) String? state;
    @HiveField(8) String? country;

    Addr({
        this.fullAddress,
        this.line1,
        this.line2,
        this.line3,
        this.city,
        this.zipcode,
        this.district,
        this.state,
        this.country,
    });

    factory Addr.fromJson(Map<String, dynamic> json) => Addr(
        fullAddress: json["full_address"]  ?? '',
        line1: json["line1"] ?? '',
        line2: json["line2"] ?? '',
        line3: json["line3"] ?? '',
        city: json["city"] ?? '',
        zipcode: json["zipcode"] ?? '',
        district: json["district"] ?? '',
        state: json["state"] ?? '',
        country: json["country"] ?? '',
    );

    Map<String, dynamic> toJson() => {
        "full_address": fullAddress,
        "line1": line1,
        "line2": line2,
        "line3": line3,
        "city": city,
        "zipcode": zipcode,
        "district": district,
        "state": state,
        "country": country,
    };
}
