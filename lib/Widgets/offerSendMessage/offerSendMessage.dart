import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class OfferSendMessage extends StatefulWidget {

  @override
  _OfferSendMessageState createState() => _OfferSendMessageState();
}

class _OfferSendMessageState extends State<OfferSendMessage> {
  bool offergenerate=true;


  @override
  Widget build(BuildContext context) {
    return

      Container(
        padding: EdgeInsets.symmetric(horizontal: 0,vertical: 0),
        margin: EdgeInsets.only(left: 80,right: 20),
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(


              decoration: BoxDecoration(
                color: Color(0xff66BBB7),
                borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),

              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text('Custom Order',style:GoogleFonts.poppins(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w500),),
                          Text('Budget:  \$12/hr',style: GoogleFonts.poppins(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w400),),
                          Text('Start Date:  June 22, 2022',style: GoogleFonts.poppins(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w400),),
                          Text(' End Date: June 28, 2022',style: GoogleFonts.poppins(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w400),),
                          TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffD1FFFD)
                              ),
                              onPressed: (){}, child: Text(
                            'WithDraw',style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,fontSize: 17.sp,color: Color(0xff2C7976)
                          ),
                          ))

                        ],
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
