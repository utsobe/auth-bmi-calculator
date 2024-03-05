import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hive/hive.dart';

import 'app/core/services/local_db_services/local_db_services.dart';
import 'app/data/models/auth/appcode_model.dart';
import 'app/routes/app_pages.dart';

void main() async {
  Hive
    ..registerAdapter(AppcodeModelAdapter())
    ..registerAdapter(AppcodeModelAdapter());
  await Get.putAsync(() => LocalDBService().initService(), permanent: true);
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
