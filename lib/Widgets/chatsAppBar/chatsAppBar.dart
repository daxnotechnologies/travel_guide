import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ChatsAppBar extends StatelessWidget {
  const ChatsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/images/Rectangle 13.png"),

          ),
          title: Text("Dean",style: GoogleFonts.poppins(fontSize:18.sp,fontWeight:FontWeight.w500,color: Color(0xff183046)),),
          subtitle: Text("Online",style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w400),),
          trailing: Expanded(
            child: Row(
              children: [
                ImageIcon(AssetImage("assets/images/Vector (19).png")),SizedBox(width: 20,),
    ImageIcon(AssetImage("assets/images/Vector (20).png")),

    ],
        ),
          ),



    ),
      );
  }
}
