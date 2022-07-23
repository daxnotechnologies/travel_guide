import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class GenerateOffer extends StatelessWidget {
  const GenerateOffer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.05,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.red,

      ),
      child: Center(child: Text("Generate Offer",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 18.sp,color: Colors.white),)),
    );
  }
}
