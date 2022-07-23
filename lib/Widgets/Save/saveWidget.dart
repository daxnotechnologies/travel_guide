import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class Savedwidget extends StatelessWidget {
  const Savedwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
             BoxShadow(
               color: Colors.grey.shade100,
               blurRadius: 5,
               spreadRadius: 1,
               offset: Offset(0.0, 10)
           )

          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 101,
                width: MediaQuery.of(context).size.width * 0.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Rectangle 13.png'),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Onur Ozdeir",
                            style: GoogleFonts.poppins(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff666666)),
                          ),
                        ),
                        Text(
                          "Florida, USA",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                              fontSize: 6.sp, color: Color(0xff666666)),
                        ),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            SmoothStarRating(
                              rating: 5,
                              size: 9,
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
                            Text('(120)',style: GoogleFonts.poppins(fontSize: 8.sp,color: Color(0xff666666),fontWeight: FontWeight.w300),),
                          ],
                        ),
                        SizedBox(height: 3,),

                        Text("Enjoy a Thrilling Shared Airboat Ride, and Explore the Exhibits",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                                color: Color(0xff666666),
                                fontSize: 8.sp
                                ,fontWeight: FontWeight.w300
                            ),
                            textAlign: TextAlign.justify),
                      ],
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
                        GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 13.sp,color: Color(0xff183046)),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Color(0xffFF9494),
                        size: 15,
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

