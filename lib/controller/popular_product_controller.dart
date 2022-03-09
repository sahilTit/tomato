import 'package:get/get.dart';
import 'package:tomato/data/api/reprisotry/popular_product_repo.dart';
import 'package:tomato/modles/products_modles.dart';

class PopularProductsController extends GetxController{
  final PopularProductRepo popularProductRepo;
  PopularProductsController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get PopularProductList => _popularProductList;

  Future<void> getPopularProductList()async{
   Response response =await popularProductRepo.getPopularProductList();
   if(response.statusCode==200){
      print("Got Products");
     _popularProductList=[];
     _popularProductList.addAll(Product.fromjson(response.body).products);
     print(_popularProductList);
     update();
   }else{

   }
  }
}