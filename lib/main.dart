import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unistamp_1/bindings/RootBinding.dart';
import 'package:unistamp_1/routes/app_pages.dart';
import 'package:unistamp_1/routes/routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      initialBinding: RootBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      getPages: AppPages.list,
      theme: ThemeData(primarySwatch: Colors.red),
    ),
  );
}
