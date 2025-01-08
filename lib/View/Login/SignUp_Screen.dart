import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../res/component/round_button.dart';
import '../../utils/rotues/routes_name.dart';
import '../../utils/utils.dart';
import '../../view_model/auth_view_model.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  ValueNotifier<bool> _obsecurePassword = ValueNotifier<bool>(true);
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  // FocusNode emailFocusNode =  FocusNode();
  // FocusNode passwordFocusNode =  FocusNode();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _passcontroller.dispose();
    _emailcontroller.dispose();
    _obsecurePassword.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final authViewMode = Provider.of<AuthViewModel>(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        color: Colors.pink,

        child: Stack(
          children: [
            Positioned(
                top: -180,
                child: Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.pink.shade100,
                  child: Image.asset("image/icecream3.jpg"),
                )),
            Positioned(
                left: 20,
                top: 140,
                child: Text("Create\nAccount!",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,
                    color: Colors.white),)),
            Positioned(
              bottom: 1,
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.5,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(75),topLeft: Radius.circular(75)),
                    color: Colors.red.shade50,
                    boxShadow: [BoxShadow(
                        color: Colors.black12,offset: Offset(-10, -10,),blurRadius: 20
                    )]),
              ),
            ),
            Positioned(
                left: 20,
                bottom: 1,
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.50,
                  width: MediaQuery.sizeOf(context).width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [


                          SizedBox(width: MediaQuery.sizeOf(context).width*0.37,),

                          Padding(
                            padding: const EdgeInsets.only(left: 100.0,top: 10),
                            child: RoundButton(title: 'SignUp',
                              loading: authViewMode.signUpLoading,
                              onPress: (){

                                if (_emailcontroller.text.isEmpty){
                                  Utils.flushBarErrorMessage("Please Enter Email",context);
                                }else if (_passcontroller.text.isEmpty){

                                  Utils.snackBar("Please Enter Password",context);
                                }
                                else if (_passcontroller.text.length <6){
                                  Utils.flushBarErrorMessage("Please Enter 6 Digit Password ", context);
                                }
                                else {
                                  Map  data ={
                                    'email' : _emailcontroller.text.toString(),
                                    'password': _passcontroller.text.toString(),
                                  };
                                  authViewMode.signUpApi(data , context);
                                }


                              },
                            ),
                          )
                        ],
                      ),

                      SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                      ValueListenableBuilder(
                          valueListenable: _obsecurePassword,

                          builder: (context  , value , child){
                            return TextFormField(decoration:  InputDecoration(labelText: "  Username",
                              prefixIcon: Icon(Icons.person,color: Colors.pink.shade500,size: 24,),



                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),
                              controller:_emailcontroller,obscureText: _obsecurePassword.value,

                              // focusNode: emailFocusNode,
                              // onFieldSubmitted: (valu){
                              //
                              // Utils.fieldFocusChange(BuildContext, context, emailFocusNode, passwordFocusNode);
                              //
                              //
                              // },
                              keyboardType: TextInputType.name,);

                          }
                      ),


                      SizedBox(height: MediaQuery.sizeOf(context).height*0.04,),
                      TextFormField(decoration: InputDecoration(labelText: " Pasword",

                        prefixIcon: Icon(Icons.password,color: Colors.pink.shade500,size: 24,),

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),),
                        controller: _passcontroller,
                        // focusNode: passwordFocusNode,
                      ),

                      SizedBox(height: MediaQuery.sizeOf(context).height*0.060,),
                      Row(
                        children: [
                          SizedBox(width: MediaQuery.sizeOf(context).width*0.20),
                          Text("Already have an account?"),
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, RoutesName.login);

                          }, child: Text("Login",style: TextStyle(color: Colors.black87),))
                        ],
                      )
                    ],
                  ),
                )),],
        ),
      ),
    );
  }
}
