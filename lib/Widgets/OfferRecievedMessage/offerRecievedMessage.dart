import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class OfferRecievedMessage extends StatefulWidget {

  @override
  _OfferRecievedMessageState createState() => _OfferRecievedMessageState();
}

class _OfferRecievedMessageState extends State<OfferRecievedMessage> {
  bool offergenerate=true;


  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
        margin: EdgeInsets.only(right: 80,left: 20),
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(0),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(


              decoration: BoxDecoration(
                color: Color(0xffF8F8F8),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Custom Order',style:GoogleFonts.poppins(color: Colors.black,fontSize: 18.sp,fontWeight: FontWeight.w500),),
                            Text('Budget:  \$12/hr',style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w400),),
                            Text('Start Date:  June 22, 2022',style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w400),),
                            Text('End Date: June 28, 2022',style: GoogleFonts.poppins(color: Colors.black,fontSize: 17.sp,fontWeight: FontWeight.w400),),
                            Row(
                              children: [
                                TextButton(
                                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                                        backgroundColor: Color(0xff333333),
                                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5)
                                    ),
                                    onPressed: (){}, child: Text(
                                  'Accept',style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w200,fontSize: 17.sp,color: Colors.white
                                ),
                                )),
                                SizedBox(
                                  width: 20,
                                ),
                                TextButton(
                                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),


                                    ),
                                    onPressed: (){}, child: Text(
                                  'Decline',style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,fontSize: 17.sp,color: Color(0xff2C7976)
                                ),
                                )),
                              ],
                            )

                          ],
                        ),
                      ))),
            ),
            Positioned.fill(
              bottom: -180,
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
