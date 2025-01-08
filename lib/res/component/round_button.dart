import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/utils.dart';
import '../color.dart';
class RoundButton extends StatelessWidget {

  final String title ;
  final bool loading ;
  final VoidCallback onPress ;
  const RoundButton({Key? key , required this.title ,this.loading = false , required this.onPress,

  }) : super(key: key );
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: MediaQuery.sizeOf(context).height*0.06,
        width: MediaQuery.sizeOf(context).width*0.2,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Appcolor.buttonColor,),

        child: Center(child:loading? CircularProgressIndicator(color: Colors.white,)
            :  Text(title,style: TextStyle(color: Colors.white),)),


      ),
    );
  }
}
