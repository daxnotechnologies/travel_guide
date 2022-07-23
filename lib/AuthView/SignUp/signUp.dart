import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/AuthView/LoginView/loginScreen.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
import 'package:travel_guide/Widgets/DropDown/dropDown.dart';

import '../../BottomBar/bottomNavBar.dart';
import '../../Constants/constants.dart';
import '../../GuiderBottomBar/guiderBottomNavBar.dart';
import '../../GuiderView/ChooseCity/ChooseCity.dart';

class SignUp extends StatefulWidget {

   SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var selectedValue= "Traveller";

   var obscure=true;
  var obscure1=true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff666666),
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10)
              )
            ),
            child: dropDownSignup(selectedItem: selectedValue,),
            width: 120,
            height: 46,
          ),
        ],
      ),
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Register",
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500,
                    color: Color(0xff183046), fontSize: 36.sp)),
          ),
          CustomTextFields(
            hintText: "Name",
            hintColor: Color(0xff666666),

          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "E-mail",
            hintColor: Color(0xff666666),

          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "Password",

            hintColor: Color(0xff666666),

            obscure: obscure,
            leadinIcon:obscure==false?InkWell(
                onTap: (){
                  setState(() {
                    obscure=!obscure;
                  });
                },
                child: Icon(CupertinoIcons.eye)):InkWell(
                onTap: (){
                  obscure=!obscure;
                },
                child: Icon(CupertinoIcons.eye_slash)),
          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "Confirm Password",
            hintColor: Color(0xff666666),

            obscure: obscure1,
            leadinIcon:obscure1==false?InkWell(
                onTap: (){
                  setState(() {
                    obscure1=!obscure1;
                  });
                },
                child: Icon(CupertinoIcons.eye)):InkWell(
                onTap: (){
                  setState(() {
                    obscure1=!obscure1;
                  });
                },
                child: Icon(CupertinoIcons.eye_slash)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xffE27D5F),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
              onPressed: () {
                if(finalChoosenSignup== "Traveller"){
                  // print("BC");
                  Navigator.of(context).push(
                    MaterialPageRoute(builder:
                    (context) => bottomNavigationBar()
                    )
                  );
                } else if (finalChoosenSignup == "Guider"){
                  // print("Kamina");
                  Navigator.of(context).push(
                      MaterialPageRoute(builder:
                          (context) => ChooseCity()
                      )
                  );
                }
              },
              child: Text(
                "Sign Up",
                style: GoogleFonts.poppins(
                  fontSize: 20.sp,
                    color: Colors.white, fontWeight: FontWeight.w500),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.04,
          ),
          Row(
            children: [
              Expanded(child: Divider(height: 5)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "OR",
                      style: GoogleFonts.poppins(color: Color(0xff666666),fontSize: 20.sp,fontWeight:FontWeight.w400),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Divider(
                height: 5,
              )),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.02,
          ),
          TextButton.icon(
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Color(0xffF1F6F7),
                  padding: EdgeInsets.symmetric(vertical: 14)),
              onPressed: () {},
              icon: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/google.png"))),
              ),
              label: Text(
                "       Sign Up with Google",
                style: GoogleFonts.poppins(color: Color(0xff808B9B),fontSize: 20.sp,fontWeight:FontWeight.w500),
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Do not have account? ',
                style:
                    GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w500, color: Colors.grey),
              ),
              InkWell(
                  onTap: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 18.sp, color: Color(0xff494A4A),fontWeight: FontWeight.w500),
                  ))
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    ));
  }
}
