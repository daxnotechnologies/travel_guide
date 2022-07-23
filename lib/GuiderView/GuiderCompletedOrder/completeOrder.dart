import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_guide/TravelerView/UserProfile/currentOrder.dart';

import '../../Widgets/topContainer.dart';
 class GuiderCompleteOrder extends StatelessWidget {
   const GuiderCompleteOrder({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return SafeArea(

       child: Scaffold(
         backgroundColor: Color(0xffFFFFFF),




         body: SingleChildScrollView(
           child: Column(
             children: [
               TopContainer(),
               Align(
                   alignment: Alignment.centerRight,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                     child: GestureDetector(
                         onTap:(){Get.to(CurrentOrder());},
                         child: Text("View Current Orders",style: GoogleFonts.poppins(fontSize: 18.sp
                             ,fontWeight: FontWeight.w500,color: Color(0xffC38D9D)),)),
                   )),
               SizedBox(height: 50,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Completed",
                             style: GoogleFonts.poppins(
                                 color: Color(0xff183046), fontSize: 36.sp)),
                         Text("Tours",
                             style: GoogleFonts.poppins(
                                 color: Color(0xff183046), fontSize: 36.sp)),
                       ],
                     ),
                     Icon(Icons.arrow_forward_outlined,size: 26,color: Colors.grey,)
                   ],
                 ),
               ),
               SizedBox(height: 30,),
               Container(
                 height: 87,
                 width: MediaQuery.of(context).size.width*0.9,
                 decoration: BoxDecoration(
                 color: Color(0xffFFFFFFD),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(width: 0.3)
                     ,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                   child: Row(
                     children: [
                       Container(
                         width: MediaQuery.of(context).size.width*0.10,
                         decoration:BoxDecoration(
                           color: Color(0xff6CE19B),
                       shape: BoxShape.circle,
                   ),



                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Center(child: Icon(Icons.check,color: Colors.white70,size: 25,)),
                         ),
                       ),
                       SizedBox(width: 20,),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 12.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,

                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Rob Percivel",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400,color:Color(0xff183046)),),
                                   Text("\$12/hr",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0xff183046)),),

                                 ],
                               ),


                               Text("Conpleted 2 days ago",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6A7A89)),),



                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               Container(
                 height: 87,
                 width: MediaQuery.of(context).size.width*0.9,
                 decoration: BoxDecoration(
                   color: Color(0xffFFFFFFD),
                   borderRadius: BorderRadius.circular(10),
                   border: Border.all(width: 0.3)
                   ,
                 ),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                   child: Row(
                     children: [
                       Container(
                         height:MediaQuery.of(context).size.height*0.15,
                         width: MediaQuery.of(context).size.width*0.11,
                         decoration:BoxDecoration(
                           color: Color(0xff6CE19B),
                           shape: BoxShape.circle,
                         ),



                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Center(child: Icon(Icons.check,color: Colors.white70,size: 25,)),
                         ),
                       ),
                       SizedBox(width: 20,),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.symmetric(vertical: 12.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             crossAxisAlignment: CrossAxisAlignment.start,

                             children: [
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Text("Rob Percivel",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400,color:Color(0xff183046)),),
                                   Text("\$12/hr",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0xff183046)),),

                                 ],
                               ),
                               Text("Conpleted 2 days ago",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6A7A89)),)
                              ,
                               SmoothStarRating(
                                 rating: 4,
                                 size: 15,
                                 color: Color(0xffD6D6D6),
                                 filledIconData: Icons.star,
                                 halfFilledIconData: Icons.star_half,
                                 defaultIconData: Icons.star_border,
                                 starCount: 5,
                                 allowHalfRating: false,
                                 spacing: 2.0,
                                 // onRatingChanged: (value) {
                                 //   setState(() {
                                 //     rating = value;
                                 //   });
                                 // },
                               ),
                             ],
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
               ),
               SizedBox(height: 20,),
             ],
           ),
         ),

       ),
     );
   }
 }
