import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:travel_guide/BottomBar/bottomNavBar.dart';
import 'package:travel_guide/TravelerView/UserProfile/userProfile.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/Categories.dart';

import 'package:travel_guide/Widgets/Dashboard%20widgets/availableGuides.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/dashBoardContainer.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/totalGuides.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';
import 'package:travel_guide/Widgets/topContainer.dart';

import '../MainMenu/mainMenu.dart';


class DashBoard extends StatefulWidget {
   late int value;


   @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopAppBar(),
                // SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: Color(0xffFFFFFF),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 14.0, right: 10, top: 12, bottom: 12),
                          child: Icon(Icons.search),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: TextFormField(
                              decoration: InputDecoration.collapsed(
                                hintText: 'Florida, USA',
                                hintStyle: GoogleFonts.poppins(fontSize:17.sp)

                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, right: 14),
                          child: Icon(Icons.mic),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Suggested Guides (2)',
                        style: GoogleFonts.poppins(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff183046)),
                      ),
                      Icon(Icons.arrow_forward,color:Color(0xffC38D9D),size: 25,),
],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.34,
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                            onTap: (){Get.to(UserProfile());},
                            child: DashBoardContainer());
                      },
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Available Guides (12)',
                        style: GoogleFonts.poppins(
                            fontSize: 22.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff183046)),
                      ),
                      Icon(Icons.arrow_forward,color:Color(0xffC38D9D),size: 25,),
],
                  ),
                ),

                Container(
                   height: MediaQuery.of(context).size.height*0.25,
                  child: ListView.builder(

                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                            onTap: (){Get.to(UserProfile());},
                            child: AvailableGuides()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Guides (121)',
                        style: GoogleFonts.poppins(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff183046)),
                      ),
                      Icon(Icons.arrow_forward,color:Color(0xffC38D9D),size: 30,),
],
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height*0.25,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: GestureDetector(
                            onTap: (){Get.to(UserProfile());},
                            child: TotalGuides()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Categories',
                        style: GoogleFonts.poppins(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff183046)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.15,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Categories(),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),

    );
  }

}
