import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_guide/Widgets/topContainer.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
           TopContainer(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 30),
                   child: Card(
                     elevation: 10,
                     child: Container(
                       width: MediaQuery.of(context).size.width*0.9,
                       decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         boxShadow: [BoxShadow(color: Colors.white,blurRadius: 1,spreadRadius: 5)]


    ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [ Text(
                             "Leave Review",
                             style: GoogleFonts.poppins(
                                 color: Color(0xffC38D9D),
                                 fontSize: 24.sp,
                                 fontWeight: FontWeight.w500),
                           ),
                             SizedBox(
                               height: 10,
                             ),
                             SmoothStarRating(
                               rating: 5,
                               size: 44,
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
                             ),],)
                         ],
                       ),
                     ),
                   ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
