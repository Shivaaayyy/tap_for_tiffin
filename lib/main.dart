import 'package:flutter/material.dart';
import 'package:tap_for_tiffin/controllers/popular_product_control.dart';
import 'package:tap_for_tiffin/pages/home/food/food_detail.dart';
import 'package:tap_for_tiffin/pages/home/food/login.dart';
import 'package:tap_for_tiffin/pages/home/food/recommended_food_detail.dart';
import 'package:tap_for_tiffin/pages/home/tiffin_page_body.dart';
import 'pages/home/main_tiffin_page.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart'as dep;

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Get.find<PopularProductControl>().getPopularTiffinList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'tap for tiffin',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
     home:MainTiffinPage(),
  );
  }
}
