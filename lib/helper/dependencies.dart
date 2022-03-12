import 'package:get/get.dart';
import 'package:tomato/controller/popular_product_controller.dart';
import 'package:tomato/data/api/api_client.dart';
import 'package:tomato/data/api/reprisotry/popular_product_repo.dart';
import 'package:tomato/utils/app_constants.dart';

Future<void> init()async{
 Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

 Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()) );

 Get.lazyPut(() => PopularProductsController(popularProductRepo: Get.find()) );
}