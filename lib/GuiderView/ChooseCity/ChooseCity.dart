import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/GuiderView/CreateService/createService.dart';

import '../../Widgets/CustomTextFields.dart';
class ChooseCity extends StatelessWidget {
  const ChooseCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                                     Icon(Icons.arrow_back,color: Colors.black,size: 30,),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Choose Your",
                    style: GoogleFonts.poppins(
                        color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("City",
                    style: GoogleFonts.poppins(
                        color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
              ),
            ),

            SizedBox(height: 60,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextFields(
                hintText: "Florida, USA",
                leadinIcon: Icon(Icons.location_on_outlined),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  backgroundColor: Color(0xffE27D5F),
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 14),
                ),
                onPressed: () {
                  Get.to(CreateService());
                },
                child: Text(
                  "Continue",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20.sp),
                )),

          ],
        ),
      ),
    );
  }
}
