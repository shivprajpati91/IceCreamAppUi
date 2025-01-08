import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


import '../../Model/user_model.dart';
import '../../utils/rotues/routes_name.dart';
import '../user_view_model.dart';

class SplashServices{

  Future<UserModel> getUserData() => UserViewModel().getUser();
  void checkAuthenctication(BuildContext context)async {

    getUserData().then((value)async{
      if (value.token =='null' ||  value.token == ''){
       await  Future.delayed(Duration(seconds: 3));

        Navigator.pushNamed(context, RoutesName.login);

      }else {
      await  Future.delayed(Duration(seconds: 3));

        Navigator.pushNamed(context, RoutesName.home);

      }
    }).onError((error , stackTrace){
      if (kDebugMode){
        print(error.toString());
      }
    });
  }
}