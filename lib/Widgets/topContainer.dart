import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/BottomBar/bottomNavBar.dart';
import 'package:travel_guide/GuiderBottomBar/guiderBottomNavBar.dart';
class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 145,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xffC38D9D)),
        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              radius: 40,
              backgroundImage:
              AssetImage("assets/images/Ellipse 1.png"),
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
                      onTap: () {
                        Get.to(guiderBottomNavigationBar(
                          editProfile: true,
                        ));
                      },
                      child: ImageIcon(AssetImage("assets/images/Vector (4).png",),color: Colors.white,)),
                )),
          ),
        ),
      ),
    );
  }
}
