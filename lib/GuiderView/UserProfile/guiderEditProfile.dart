import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/BottomBar/bottomNavBar.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
import 'package:travel_guide/Widgets/DropDown/selectGenderDropdown.dart';

class GuiderEditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.22,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Color(0xffC38D9D)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14.0),
                          child: Stack(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 40,
                                backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                              ),
                              Positioned.fill(
                                top: -50,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 17,
                                    ),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:Colors.white54,
                                    ),
                                  ),
                                ),

                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text('Hello Keyleen',style: GoogleFonts.poppins(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 20),)
                    ,  Text('Traveller Profile',style: GoogleFonts.poppins(color: Colors.white70,fontSize: 15),)

                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),

              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "Kayleen",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "User Name",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                    hintText: "Male",
                    leadinIcon: SelectGender(selectedItem: "male",)),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                    backgroundColor: Color(0xffE27D5F),
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 14),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
