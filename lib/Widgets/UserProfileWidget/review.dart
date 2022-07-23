import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
class Review extends StatelessWidget {
  const Review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:0,vertical:5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black12.withOpacity(0.02),
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0.0, 10)
            )
          ],
        ),

        margin: EdgeInsets.symmetric(horizontal: 0,vertical: 5
        ),


        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/Ellipse 1.png'),
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Keren",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 20.sp),),
                          SizedBox(width: 10,),
                          SmoothStarRating(
                            rating: 4,
                            size: 17,
                            color: Color(0xffFFCE31),
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,borderColor: Colors.grey,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: false,
                            spacing: 0,
                            // onRatingChanged: (value) {
                            //   setState(() {
                            //     rating = value;
                            //   });
                            // },
                          ),                          ]
                    ),
                    Text("Lorem ipsum may be used as a placeholder before final copy with with",maxLines: 2,overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(fontSize: 13.sp
                    ),),
                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
