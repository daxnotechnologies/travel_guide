import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPageWidget extends StatelessWidget {
  const NotificationPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,vertical: 10
      ),
      child: Container(
        height: 64,
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade100,
                blurRadius: 5,
                spreadRadius: 1,
                offset: Offset(0.0, 10)
            )
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: CircleAvatar(
                foregroundColor: Colors.grey,
                radius: 25    ,
                backgroundImage: AssetImage('assets/images/Ellipse 1.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Text("Sarah has just given you a review.",
                          maxLines: 3,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                              color: Color(0xff183046),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400)),
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            "03:11 PM",
                            style: GoogleFonts.poppins(
                                color: Color(0xff9E9E9E),
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
