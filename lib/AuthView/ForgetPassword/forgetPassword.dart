import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/AuthView/ForgetPassword/verficationCode.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff666666),
        ),
      ),
      body: ListView(
        padding:EdgeInsets.symmetric(horizontal: 18.0) ,
        children: [
          SizedBox(height:MediaQuery.of(context).size.height*0.05,),
          Text("Forget",
              style: GoogleFonts.poppins(
                  color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
          Text("Password",
              style: GoogleFonts.poppins(
                  color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
          SizedBox(height:MediaQuery.of(context).size.height*0.01,),
          CustomTextFields(
            hintText: "E-mail",
            hintColor: Color(0xff666666),

          ),
          SizedBox(height: 25,),
          TextButton(
              style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                backgroundColor: Color(0xffE27D5F),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
              onPressed: () {Get.to(VerificationCode());},
              child: Text(
                "Send",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                    color: Colors.white, fontWeight: FontWeight.w500),
              )),
          SizedBox(height:MediaQuery.of(context).size.height*0.45,),
          Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have Account? ',style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w400,color: Colors.grey),),
              InkWell(child: Text('Login ',style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff494A4A)),)),

            ],
          )),
          SizedBox(height: 20),
        ],


      ),
    );
  }
}
