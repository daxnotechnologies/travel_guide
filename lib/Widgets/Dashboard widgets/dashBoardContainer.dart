import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class DashBoardContainer extends StatelessWidget {
  const DashBoardContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10,vertical: 10),
      child: Container(
        height: 130 ,
       decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(10),
         boxShadow: <BoxShadow>[
            BoxShadow(
               color: Colors.grey.shade100,
               blurRadius: 5,
               spreadRadius: 1,
               offset: Offset(0.0, 16)
           )

         ],
       ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: MediaQuery.of(context).size.width * 0.28,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle 13 1.png'),
                        fit: BoxFit.scaleDown)),
              ),
              SizedBox(
                width: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text(
                              "Onur Ozdeir",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff666666)),
                            ),
                          ),
                          Text(
                            "Florida, USA",
                            style: GoogleFonts.poppins(
                                fontSize: 10.sp
                                , color: Color(0xff666666),fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              SmoothStarRating(
                                rating: 5,
                                size: 15,
                                color: Color(0xffFFCE31),
                                filledIconData: Icons.star,
                                halfFilledIconData: Icons.star_half,
                                defaultIconData: Icons.star_border,
                                starCount: 5,
                                allowHalfRating: false,
                                spacing:0,
                                // onRatingChanged: (value) {
                                //   setState(() {
                                //     rating = value;
                                //   });
                                // },
                              ),
                              Text('(120)',style: GoogleFonts.poppins(fontWeight: FontWeight.w300,fontSize: 10.sp,color: Color(0xff666666)),),
                            ],
                          ),

                          Text("Enjoy a Thrilling Shared Airboat Ride, and Explore the Exhibits",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                color: Color(0xff666666),
                                fontWeight: FontWeight.w300,
                                fontSize: 8.sp
                              ),
                              textAlign: TextAlign.justify),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.13,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$124/h',
                        style:
                        GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15.sp,color: Color(0xff183046)),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Color(0xffFF9494),
                        size: 16,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
