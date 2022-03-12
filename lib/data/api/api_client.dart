import 'package:get/get.dart';
import 'package:tomato/utils/app_constants.dart';

class ApiClient extends GetConnect implements GetxService{
  String? token;
  final String appBaseUrl;
  late Map<String,String> _mainHeaders;
  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders={
      'Content-type' : 'application/json ; Charset=UTF-8',
      'Autorization' : 'Bearer $token'
    };
  }
  Future<Response> getData(String uri,) async {
    try{
     Response response = await get(uri,headers:_mainHeaders);
     return response;
    }catch(e){
      return Response(statusCode: 1,statusText: e.toString());
    }
  }
}