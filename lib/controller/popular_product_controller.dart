import 'package:get/get.dart';
import 'package:tomato/data/api/reprisotry/popular_product_repo.dart';

class PopularProductsController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductsController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get PopularProductList => _popularProductList;

  Future<void> getPopularProductList()async{
   Response response =await popularProductRepo.getPopularProductList();
   if(response.statusCode==200){
     _popularProductList=[];
     //_popularProductList.addAll();
     update();
   }else{

   }
  }
}