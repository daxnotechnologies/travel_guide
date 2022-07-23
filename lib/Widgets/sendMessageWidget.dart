import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/constants.dart';

class sendMessageWidget extends StatefulWidget {

  @override
  _sendMessageWidgetState createState() => _sendMessageWidgetState();
}

class _sendMessageWidgetState extends State<sendMessageWidget> {
  bool offergenerate=true;


  @override
  Widget build(BuildContext context) {
    return

        Container(
          padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
          margin: EdgeInsets.only(left: 100,right: 20),
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(


                decoration: BoxDecoration(
                    color: Color(0xff66BBB7),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('hy,  Hello sir How are you?',style:  GoogleFonts.poppins(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w400),))),
              ),
              Positioned.fill(
                bottom: -74,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text("03:02 PM",style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w400,color: Color(0xff9E9E9E)),),
                  ),
                ),
              )

            ],
          ),


    );
  }
}
