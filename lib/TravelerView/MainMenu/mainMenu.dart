import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/BottomBar/bottomNavBar.dart';
import 'package:travel_guide/GuiderView/GuiderPayments/GuiderPayments.dart';
import 'package:travel_guide/TravelerView/Payments/payments.dart';
import 'package:travel_guide/TravelerView/AllRequest/AllRequest.dart';
import 'package:travel_guide/TravelerView/Location/location.dart';
import 'package:travel_guide/TravelerView/Payments/payments.dart';
import 'package:travel_guide/TravelerView/UserProfile/changePassword.dart';
import 'package:travel_guide/TravelerView/UserProfile/currentOrder.dart';
import 'package:travel_guide/Widgets/topContainer.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        body:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TopContainer(),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: GestureDetector(
                      onTap: (){Get.to(Location());},
                      child: Stack(
                  children: [
                      Container(
                        height: 275,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/Rectangle 44.png"),
                                fit: BoxFit.fill)),
                      ),
                      Positioned(
                          left: 0,
                          bottom: 0,
                          right: 0,
                          top: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    end: Alignment.topCenter,
                                    begin: Alignment.bottomCenter,
                                    colors: [
                                      Colors.black.withOpacity(0.1),
                                      Colors.black.withOpacity(0.5),
                                    ])),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Center(
                                  child: Text(
                                "Start Finding Your Guide",
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 40.sp,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ))
                  ],
                ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                  child: GestureDetector(
                    onTap: (){Get.to(Payments());},
                    child: ListTile(
                      minLeadingWidth: 50,
                      tileColor: Color(0xffFFFFFF),
                      leading: Transform.translate(
                        offset: Offset(30, 0),
                        child: Text(
                          "Payments",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Color(0xff4B4B4B)),
                        ),
                      ),
                      trailing: Transform.translate(
                          offset: Offset(-10, 0),
                          child: Icon(Icons.navigate_next,color: Color(0xff666666))),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                  child: GestureDetector(
                    onTap: (){Get.to(AllRequest());},
                    child: ListTile(
                      minLeadingWidth: 50,
                      tileColor: Color(0xffFFFFFF),
                      leading: Transform.translate(
                        offset: Offset(30, 0),
                        child: Text(
                          "Media",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Color(0xff4B4B4B)),
                        ),
                      ),
                      trailing: Transform.translate(
                          offset: Offset(-10, 0),
                          child: Icon(Icons.navigate_next,color: Color(0xff666666))),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(CurrentOrder());
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                    child: ListTile(
                      minLeadingWidth: 50,
                      tileColor: Color(0xffFFFFFF),
                      leading: Transform.translate(
                        offset: Offset(30, 0),
                        child: Text(
                          "Orders",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Color(0xff4B4B4B)),
                        ),
                      ),
                      trailing: Transform.translate(
                          offset: Offset(-10, 0),
                          child: Icon(Icons.navigate_next,color: Color(0xff666666))),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(ChangePassword());
                  },
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                    child: ListTile(
                      minLeadingWidth: 50,
                      tileColor: Color(0xffFFFFFF),
                      leading: Transform.translate(
                        offset: Offset(30, 0),
                        child: Text(
                          "Change Password",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: Color(0xff4B4B4B)),
                        ),
                      ),
                      trailing: Transform.translate(
                          offset: Offset(-10, 0),
                          child: Icon(Icons.navigate_next,color: Color(0xff666666))),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0.0, vertical: 5),
                  child: ListTile(
                    minLeadingWidth: 50,
                    tileColor: Color(0xffFFFFFF),
                    leading: Transform.translate(
                      offset: Offset(30, 0),
                      child: Text(
                        "Log Out",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp,
                            color: Color(0xff4B4B4B)),
                      ),
                    ),
                    trailing: Transform.translate(
                        offset: Offset(-10, 0),
                        child: Icon(Icons.navigate_next,color: Color(0xff666666))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
