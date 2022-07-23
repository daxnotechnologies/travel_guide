import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../GuiderBottomBar/guiderBottomNavBar.dart';
import '../../Widgets/CustomTextFields.dart';

class CreateService extends StatelessWidget {
  const CreateService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(onTap:(){
                      Navigator.pop(context);
                    },child:  Icon(Icons.arrow_back,color: Colors.black,size: 30,),),
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Create Your",
                      style: GoogleFonts.poppins(
                          color: Color(0xff183046),
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Service",
                      style: GoogleFonts.poppins(
                          color: Color(0xff183046),
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFields(
                  hintText: "Name",
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFields(
                  hintText: "Florida, USA",
                  leadinIcon: Icon(Icons.location_on_outlined,color: Colors.grey,)
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: CustomTextFields(
                  hintText: "Price",
                  leadinIcon: ImageIcon(AssetImage("assets/Icons/Vector (14).png"),color: Color(0xff666666),),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                   maxLines: 4,
                  decoration: InputDecoration(
                    hintText: "Description",
                    hintStyle: TextStyle(color:Color(0xff666666,),fontSize: 17),
                    helperMaxLines: 4,
                    focusedBorder: OutlineInputBorder(

                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),

                ),
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.image,color: Color(0xff183046),),
                    Text(" Add Image",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 18.sp,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              SizedBox(height: 40,),

              TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Color(0xffE27D5F),
                    padding: EdgeInsets.symmetric(horizontal: 120, vertical: 14),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => guiderBottomNavigationBar())
                    );
                  },
                  child: Text(
                    "Publish",
                    style: GoogleFonts.poppins(
                        color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20.sp),
                  )),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
