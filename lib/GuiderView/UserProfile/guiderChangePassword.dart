import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/TravelerView/UserProfile/editProfile.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
class GuiderChangePassword extends StatelessWidget {
  const GuiderChangePassword({Key? key}) : super(key: key);

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
                  height: MediaQuery.of(context).size.height*0.22,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffC38D9D)
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius:40,
                          backgroundImage: AssetImage("assets/images/Ellipse 1.png"),


                        ),
                        title: Text("Hello Keyleen",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500),),
                        subtitle: Text("Travellers Profile",style: GoogleFonts.poppins(color: Colors.white.withOpacity(0.7)),),
                        trailing: CircleAvatar(


                            backgroundColor: Colors.white.withOpacity(0.2),

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: (){Get.to(EditProfile());},
                                  child: ImageIcon(AssetImage("assets/images/Vector (4).png"),color: Colors.white,)),
                            )



                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Change",
                      style: GoogleFonts.poppins(
                          color: Color(0xff183046), fontSize: 36,fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Password",
                      style: GoogleFonts.poppins(
                          color: Color(0xff183046), fontSize: 36,fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "Current Password",
                  leadinIcon: Image.asset("assets/images/sufix.png"),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "New Password",
                  leadinIcon: Image.asset("assets/images/sufix.png"),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: CustomTextFields(
                  hintText: "Confirm Password",
                  leadinIcon: Image.asset("assets/images/sufix.png"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                    backgroundColor: Color(0xffE27D5F),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Apply Changes",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                        color: Colors.white, fontWeight: FontWeight.w500),
                  )),
            SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
}}
