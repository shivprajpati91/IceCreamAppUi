import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../respository/auth_repository.dart';
import '../utils/rotues/routes_name.dart';
import '../utils/utils.dart';


class AuthViewModel with  ChangeNotifier {

  final _myRepo  = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  bool _signUpLoading = false ;
  bool get signUpLoading => _signUpLoading;

  setLoading(bool value ){
    _loading = value;
    notifyListeners();
  }

  setSignUpLoading(bool value ){
    _signUpLoading = value;
    notifyListeners();
  }

  Future<void> logiApi(dynamic data , BuildContext context )async {
  setLoading(true);
    _myRepo.loginApi(data).then((value){
      setLoading(false);
      if (kDebugMode){
        Utils.flushBarErrorMessage("Login Succsessfully", context);
        Navigator.pushNamed(context, RoutesName.btnav);
        print(value.toString());
      }
    }).onError((error,stackTrace){
      setLoading(false);
      if (kDebugMode){
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());

      }}
    );}

  Future<void> signUpApi(dynamic data , BuildContext context )async {
    setSignUpLoading(true);
    _myRepo.signUpApi(data).then((value){
      setSignUpLoading(false);
      if (kDebugMode){
        Utils.flushBarErrorMessage("SignUp Succsessfully", context);
        Navigator.pushNamed(context, RoutesName.btnav);
        print(value.toString());
      }
    }).onError((error,stackTrace){
      setSignUpLoading(false);
      if (kDebugMode){
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());

      }}
    );
  }}