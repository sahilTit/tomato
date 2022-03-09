import 'package:get/get.dart';
import 'package:tomato/controller/popular_product_controller.dart';
import 'package:tomato/data/api/api_client.dart';
import 'package:tomato/data/api/reprisotry/popular_product_repo.dart';

Future<void> init()async{
 Get.lazyPut(()=>ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));

 Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()) );

 Get.lazyPut(() => PopularProductsController(popularProductRepo: Get.find()) );
}