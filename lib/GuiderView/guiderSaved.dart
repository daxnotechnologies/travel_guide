import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';
import 'package:travel_guide/TravelerView/UserProfile/userProfile.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/dashBoardContainer.dart';

class GuiderSaved extends StatelessWidget {
  const GuiderSaved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowIndicator();
          return true;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopAppBar(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Saved Collection',
                        style: GoogleFonts.poppins(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff183046)),
                      ),
                      Icon(Icons.arrow_forward,color:Color(0xffC38D9D),size: 30,),
],
                  ),
                ),
                SizedBox(height: 15,),

                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                          onTap: (){Get.to(UserProfile());},
                          child: DashBoardContainer());
                    },
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
