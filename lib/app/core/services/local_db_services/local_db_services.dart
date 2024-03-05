import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../../../data/constants/constant.dart';
import '../../../data/constants/local_db_constant.dart';
import '../../../data/models/auth/appcode_model.dart';
import '../../../data/models/auth/login_model.dart';
import '../../../data/models/auth/profile_model.dart';
import '../../../data/models/gl/gl_active_model.dart';
import '../../../data/models/gl/gl_attendtreatment_model.dart';
import '../../../data/models/gl/gl_latesttreatment_model.dart';
import '../../../data/models/notification/notify_model.dart';
// import '../../../data/models/auth/login_model.dart';
// import '../../../data/models/auth/sch_model.dart';
// import '../../../data/models/auth/selectuser_model.dart';
// import '/app/data/models/calender_event/calender_event_model.dart';

class LocalDBService extends GetxService {
  var is_android = '';
  @override
  void onInit() {
    super.onInit();
    // initService();
  }

  Future<LocalDBService> initService() async {
    await Hive.openBox(ConstantValue.dbName);
    //await Hive.openBox<SelectuserModel>(ConstantValue.dbSelectUser);
    await Hive.openBox(ConstantValue.sysDbName);
    await Hive.openBox(ConstantValue.schDbName);
    await Hive.openBox(ConstantValue.glDbName);
    await Hive.openBox(ConstantValue.notifyDbName);

    if (Hive.box(ConstantValue.dbName).isEmpty) {
      Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_FIRST_TIME, true);
      Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_LOGGED_IN, false);
    }
    // if (getFCMToken().isEmpty) {
    //   final fcmToken = await FirebaseMessaging.instance.getToken();
    //   saveFirebaseToken(fcmToken);
    //   print('xxxx Firebase Token Saved $fcmToken');
    // }
    //print('xxxx LOCAL DB INITIALIZED');
    return this;
  }

  void saveFirebaseToken(String? token) {
    Hive.box(ConstantValue.sysDbName).put(DBConstant.KEY_FIREBASE_TOKEN, token);
    return;
  }

  String getFCMToken() {
    return Hive.box(ConstantValue.sysDbName)
        .get(DBConstant.KEY_FIREBASE_TOKEN, defaultValue: "");
  }

  void setIsFirstTime(bool val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_FIRST_TIME, val);
    return;
  }

  void setIsLoggedIn(bool val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_IS_LOGGED_IN, val);
    return;
  }

  void setUsername(String val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_USERNAME, val);
    return;
  }

  void setUid(String val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_UID, val);
    return;
  }

  String getUsername() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_USERNAME, defaultValue: "");
  }

  String getUid() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_UID, defaultValue: "");
  }

  bool isFirstTime() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_IS_FIRST_TIME, defaultValue: true);
  }

  bool isLoggedIn() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_IS_LOGGED_IN, defaultValue: false);
  }

  void setToken(String token) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_TOKEN, token);
    return;
  }

  void setTokenEncryptKey(String token) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_TOKEN_EK, token);
    return;
  }

  void setTokenEncryptUser(String token) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_TOKEN_EU, token);
    return;
  }

  String getToken() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_TOKEN, defaultValue: "");
  }

  String getTokenEK() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_TOKEN_EK, defaultValue: "");
  }

  String getTokenEU() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_TOKEN_EU, defaultValue: "");
  }

  bool isDarkMode() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_DARK_MODE, defaultValue: false);
  }

  void setDarkMode(bool isDark) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_DARK_MODE, isDark);
    return;
  }

  Future<void> clearDB() async {
    await Hive.box(ConstantValue.dbName).clear();
  }

  Future<void> saveSchInfo(AppcodeModel data) async {
    print('xxx lds saveSchInfo ${jsonEncode(data)}');
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_SCHINFO, data);
    return;
  }

  AppcodeModel? getSchInfo() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_SCHINFO, defaultValue: null);
  }

  LoginModel? getLoginData() {
    return Hive.box(ConstantValue.dbName).get(
      DBConstant.KEY_LOGIN,
    );
  }

  ProfileModel? getProfileData() {
    return Hive.box(ConstantValue.dbName).get(
      DBConstant.KEY_PROFILE,
    );
  }

  void setRememberLoginUser(String val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_REMEMBER_USER, val);
    return;
  }

  void setRememberLoginPassword(String val) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_REMEMBER_PASSWORD, val);
    return;
  }

  String getRememberLoginUser() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_REMEMBER_USER, defaultValue: "");
  }

  String getRememberLoginPassword() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_REMEMBER_PASSWORD, defaultValue: "");
  }

  // List<SelectuserModel> getSelectUserList() {
  //   return Hive.box(ConstantValue.dbName).get(DBConstant.KEY_SELECTUSER,
  //       defaultValue: []).cast<SelectuserModel>();
  // }

  // void saveToken(String? token) {
  //   Hive.box(ConstantValue.dbName).put(DBConstant.KEY_TOKEN, token);
  //   return;
  // }

  void saveLogin(LoginModel login) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_LOGIN, login);
    return;
  }

  void saveProfile(ProfileModel profile) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_PROFILE, profile);
    return;
  }

  String getIsAndroid() {
    if (!GetPlatform.isWeb) {
      if (Platform.isAndroid) {
        is_android = '1';
      } else if (Platform.isIOS) {
        is_android = '0';
      }
    } else {
      is_android = '2';
    }

    return is_android;
  }

  void saveNotification(List<DatumNotify>? data) {
    print('xxxx saveNotification data ${data}');
    Hive.box(ConstantValue.notifyDbName).put(DBConstant.KEY_NOTIFY, data!);
    return;
  }

  List<DatumNotify> getNotificationList() {
    return Hive.box(ConstantValue.notifyDbName)
        .get(DBConstant.KEY_NOTIFY, defaultValue: []);
  }

  getSchRemove(inx) async {
    return await Hive.box(ConstantValue.schDbName).deleteAt(inx);
  }

  getSchUpdateLogin(inx, data) async {
    return await Hive.box(ConstantValue.schDbName).putAt(inx, data);
  }

  getSchDetailIndex(inx) async {
    return await Hive.box(ConstantValue.schDbName).getAt(inx);
  }

  getSchByIndex(idserver) async {
    final keys = await Hive.box(ConstantValue.schDbName).keys.toList();
    print('xxx keys $keys}');
    int index = -1;
    for (int i = 0; i < keys.length; i++) {
      print('xxx iii ${jsonEncode(i)}');
      final value = Hive.box(ConstantValue.schDbName).get(keys[i]);
      print('xxx value ${jsonEncode(value.idserver)}');
      if (value != null && value.idserver == idserver) {
        index = i;
        break;
      }
    }

    return index;
  }

  Future<void> saveSchList(data) async {
    print('xxx localdb saveSchList ${jsonEncode(data)}');
    if (!Hive.box(ConstantValue.schDbName).containsKey(data.sid)) {
      //   await Hive.box(ConstantValue.schDbName).put(data.server_id, data);
    } else {
      //   toastLong("Appcode already exists");
    }

    return;
  }

  List getSchList() {
    return Hive.box(ConstantValue.schDbName).values.toList();
  }

  // void saveCalenderEvent(List<CalenderEventModel>? data) {
  //   Hive.box(ConstantValue.dbName).put(DBConstant.KEY_CALENDER_EVENT, data);
  // }

  // List<CalenderEventModel> getCalenderEvent() {
  //   return Hive.box(ConstantValue.dbName).get(DBConstant.KEY_CALENDER_EVENT,
  //       defaultValue: []).cast<CalenderEventModel>();
  // }

  // LANGUAGE
  String getLanguage() {
    return Hive.box(ConstantValue.dbName)
        .get(DBConstant.KEY_LANGUAGE, defaultValue: 'English');
  }

  void setLanguage(String lang) {
    Hive.box(ConstantValue.dbName).put(DBConstant.KEY_LANGUAGE, lang);
    return;
  }

  void saveGLActive(List<GlActiveModel>? glActive) {
    Hive.box(ConstantValue.glDbName).put(DBConstant.KEY_GLACTIVE, glActive);
    return;
  }

  void saveGLAttend(glAttend) {
    print('xxxx saveGLAttend');
    Hive.box(ConstantValue.glDbName).put(DBConstant.KEY_GLATTEND, glAttend);
    return;
  }

  void saveGLLatest(glLatest) {
    Hive.box(ConstantValue.glDbName).put(DBConstant.KEY_GLLATEST, glLatest);
    return;
  }

  List<GlActiveModel> getGLActive() {
    return Hive.box(ConstantValue.glDbName)
        .get(DBConstant.KEY_GLACTIVE, defaultValue: []);
  }

  List<GlAttendModel> getGLAttendanceTreatment() {
    return Hive.box(ConstantValue.glDbName)
        .get(DBConstant.KEY_GLATTEND, defaultValue: []);
  }

  List<GlLatestTreatModel> getGLLatestTreatment() {
    return Hive.box(ConstantValue.glDbName)
        .get(DBConstant.KEY_GLLATEST, defaultValue: []);
  }
}
