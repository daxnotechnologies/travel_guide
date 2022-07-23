import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.22,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Color(0xffC38D9D)),
            child: Center(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                ),
                title: Text(
                  "Hello Keyleen",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                subtitle: Text(
                  "Travellers Profile",
                  style: GoogleFonts.poppins(
                      color: Colors.white.withOpacity(0.7), fontSize: 14),
                ),
                trailing: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {},
                          child: ImageIcon(
                            AssetImage(
                              "assets/images/Vector (4).png",
                            ),
                            color: Colors.white,
                          )),
                    )),
              ),
            ),
          ),
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
                         Column(children: [ Text(
                           "Leave Review",
                           style: GoogleFonts.poppins(
                               color: Color(0xffC38D9D),
                               fontSize: 24,
                               fontWeight: FontWeight.w500),
                         ),
                           SizedBox(
                             height: 10,
                           ),
                           SmoothStarRating(
                             rating: 0,
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
    );
  }
}
