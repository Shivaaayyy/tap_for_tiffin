import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'package:tap_for_tiffin/controllers/popular_product_control.dart';
import 'package:tap_for_tiffin/data/api/repository/popular_tiffin_repo.dart';

import '../data/api/api_client.dart';

Future<void> init()async {
  //api client
   Get.lazyPut(()=>ApiClient(appBaseUrl:"https://mvs.bslmeiyu.com"));
   //repos
   //Get.lazyPut(() => PopularTiffinRepo(apiClient:Get.find()));
   //controllers
  //Get.lazyPut(() =>PopularProductControl(popularTiffinRepo: Get.find()));


}