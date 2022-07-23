import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/AuthView/ForgetPassword/changePassword.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

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
        padding: EdgeInsets.symmetric(horizontal: 28.0),
        children: [
          SizedBox(
              height:MediaQuery.of(context).size.height*0.05
          ),
          Text("Enter",
              style:
                  GoogleFonts.poppins(color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
          Text("Verification",
              style:
                  GoogleFonts.poppins(color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
          Text("Code",
              style:
                  GoogleFonts.poppins(color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
          SizedBox(
            height: 35,
          ),
          Row(
            children: [
              Container(
                height: 45,
                width: 160,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.grey.shade500,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    enabledBorder:  OutlineInputBorder(


                        borderRadius: BorderRadius.circular(10,),
                        borderSide: BorderSide(color: Colors.grey.shade500,width: 2)

                    ),
                    focusedBorder:  OutlineInputBorder(


                        borderRadius: BorderRadius.circular(10,),
                        borderSide: BorderSide(color:  Colors.grey.shade500,width: 2)

                    ),

                    border: OutlineInputBorder(



                        borderRadius: BorderRadius.circular(10,),
                      borderSide: BorderSide(color:  Colors.grey.shade500,width: 2)

                    )
                  ),
                  style: GoogleFonts.robotoMono(fontSize: 30,color: Color(0xff666666)),

                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Did not receive yet? ',
                style:
                    GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w400, color: Color(0xff666666)),
              ),
              InkWell(
                  onTap: () {},
                  child: Text(
                    "Resend",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, color: Color(0xff494A4A),fontWeight: FontWeight.w400),
                  ))
            ],
          ),
          SizedBox(
            height: 25,
          ),
          TextButton(
              style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                backgroundColor: Color(0xffE27D5F),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
              onPressed: () {Get.to(ChangePassword());},
              child: Text(
                "Verify",
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20.sp),
              )),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
