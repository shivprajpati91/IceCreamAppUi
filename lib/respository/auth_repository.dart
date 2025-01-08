
import '../Data/network/BaseApiService.dart';
import '../Data/network/NetworkApiService.dart';
import '../res/app_url.dart';

class AuthRepository{

BaseApiServices  _apiServices = NetworkApiServices();

Future<dynamic> loginApi(dynamic data)  async {

  try {

    dynamic response = await _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);

    return response ;
  }
      catch(e){
    throw e ;
      }
}
Future<dynamic> signUpApi(dynamic data)  async {

  try {

    dynamic response = await _apiServices.getPostApiResponse(AppUrl.RegisterApiEndPoint, data);

    return response ;
  }
  catch(e){
    throw e ;
  }
}
}

