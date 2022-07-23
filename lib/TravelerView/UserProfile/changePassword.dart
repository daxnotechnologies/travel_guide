import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/TravelerView/UserProfile/editProfile.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
import 'package:travel_guide/Widgets/topContainer.dart';
class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,


            children: [
             TopContainer(),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Change",
                      style: GoogleFonts.poppins(
                          color: Color(0xff183046), fontSize: 30.sp,fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password",
                      style: GoogleFonts.poppins(
                          color: Color(0xff183046), fontSize: 30.sp,fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "Current Password",
                  leadinIcon: Image.asset("assets/images/sufix.png"),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "New Password",
                  leadinIcon: Image.asset("assets/images/sufix.png"),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "Confirm Password",
                  leadinIcon: Image.asset("assets/images/sufix.png"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                    backgroundColor: Color(0xffE27D5F),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Apply Changes",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp,
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
            SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
}}
