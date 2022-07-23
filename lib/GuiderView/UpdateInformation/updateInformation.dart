import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';

import '../../Widgets/CustomTextFields.dart';

class UpdateInformation extends StatelessWidget {
  const UpdateInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopAppBar(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Update",
                        style: GoogleFonts.poppins(
                            color: Color(0xff183046),
                            fontSize: 36,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Information",
                        style: GoogleFonts.poppins(
                            color: Color(0xff183046),
                            fontSize: 36.sp
                            ,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextFields(
                    hintText: "Dean",
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextFields(
                      hintText: "Florida, USA",

                      leadinIcon: Icon(Icons.location_on_outlined,color: Colors.grey,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextFields(
                    hintText: "\$23",
                    leadinIcon: ImageIcon(AssetImage("assets/images/hr.png")),

                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,

                    maxLines: 4,
                    decoration: InputDecoration(


                        hintText: "Description",
                        hintStyle: GoogleFonts.poppins(color:Color(0xff666666,),fontSize: 18,fontWeight: FontWeight.w400),
                        helperMaxLines: 4,
                        focusedBorder: OutlineInputBorder(

                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),


                        ),


                    ),

                  ),
                ),
                SizedBox(height: 30,),
                //
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: Stack(
                //       children: [
                //         CircleAvatar(
                //           backgroundColor: Colors.grey,
                //           radius: 30,
                //           backgroundImage: AssetImage("assets/images/Rectangle 13.png"),
                //         ),
                //         Positioned.fill(
                //           top: -50,
                //           child: Align(
                //             alignment: Alignment.bottomRight,
                //             child: Container(
                //               height: 20,
                //               width: 20,
                //               child: Icon(
                //                 Icons.camera_alt,color: Colors.white,
                //                 size: 10,
                //               ),
                //               decoration: BoxDecoration(
                //                   shape: BoxShape.circle,
                //                   color:Color(0xffC38D9D)
                //               ),
                //             ),
                //           ),
                //
                //         ),
                //       ],
                //     ),
                //   ),
                // ),

                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xffE27D5F),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.symmetric(horizontal: 120, vertical: 14),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Publish",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    )),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
