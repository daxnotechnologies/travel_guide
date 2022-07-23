import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ChatingHeader extends StatelessWidget {
  const ChatingHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          ImageIcon(AssetImage("assets/Icons/Vector (13).png")),
          Expanded(
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 26,
                    backgroundImage: AssetImage("assets/images/Ellipse 1.png")
                  ),
                  Positioned.fill(
                    top: -50,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:  Color(0xFF85DC83) ,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              title: Text("Dean",style: GoogleFonts.poppins(fontSize: 17.sp,fontWeight: FontWeight.w500),),
              subtitle: Text("Online",style: GoogleFonts.poppins(fontSize: 17.sp,fontWeight: FontWeight.w400)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageIcon(AssetImage("assets/images/Vector (19).png"),color: Color(0xff183046),),
                  SizedBox(width: 20,),
                  ImageIcon(AssetImage("assets/images/Vector (20).png"),color: Color(0xff183046),),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
