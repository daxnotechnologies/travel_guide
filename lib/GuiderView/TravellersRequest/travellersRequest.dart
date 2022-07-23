import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_guide/Widgets/Dashboard%20widgets/dashBoardContainer.dart';
import 'package:travel_guide/Widgets/DropDown/perHourDropDown.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';

class TravellersRequest extends StatelessWidget {
  const TravellersRequest({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top:45
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopAppBar(),
                // SizedBox(
                //   height: 40,
                // ),
                DashBoardContainer(),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Budget",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp
                            ,
                            color: Color(0xff666666)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 75,
                          right: 50
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.27,
                        child: PerHourdropDown(selectedItem: "Per Hour",)),
                      )

                    ],
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        "Days",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp,
                            color: Color(0xff666666)),
                      ),
                      SizedBox(width: 100,),
                      Text("3",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.sp
                            ,
                            color: Color(0xff666666)),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: "Description",
                        hintStyle:  GoogleFonts.poppins(
                            color: Color(
                              0xff666666,
                            ),
                            fontSize: 17.sp),
                        helperMaxLines: 4,
                        focusedBorder: OutlineInputBorder(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: TextButton(
                      style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                        backgroundColor: Color((0xffE27D5F)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Send",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.sp),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
