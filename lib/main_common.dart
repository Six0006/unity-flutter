import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unity_flutter_test/flavor_configs/flavor_config.dart';
import 'package:unity_flutter_test/pages/unity/home.dart';

late Flavor flavor;

Future<void> mainCommon(Flavor fl) async {
  flavor = fl;
  runApp(const GetMaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
