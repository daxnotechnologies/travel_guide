import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/AuthView/ForgetPassword/forgetPassword.dart';
import 'package:travel_guide/AuthView/SignUp/signUp.dart';
import 'package:travel_guide/BottomBar/bottomNavBar.dart';
import 'package:travel_guide/Constants/constants.dart';
import 'package:travel_guide/GuiderBottomBar/guiderBottomNavBar.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';

import '../../GuiderView/ChooseCity/ChooseCity.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? name;

  var obscure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.close ,color: Color(0xff666666), size: 25,)),
      ),
      // appBar: AppBar(
      //   backgroundColor: Color(0xffE5E5E5),
      //   elevation: 0,
      //   leading: Image.asset("assets/images/Vector.png"),
      // ),
      body:NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification? overscroll) {
          overscroll!.disallowGlow();
          return true;
        },
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(
              height:MediaQuery.of(context).size.height*0.15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("Login",
                  style: GoogleFonts.poppins(
                      color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 10,),
            CustomTextFields(
              hintText: "Email",
              hintColor: Color(0xff666666),
              onchanged: (value){

                name = value;
              },
            ),
            SizedBox(height: 10,),
            CustomTextFields(
              hintText: "Password",
              obscure: obscure,
              leadinIcon:obscure==false?InkWell(
                  onTap: (){
                    setState(() {
                      obscure=!obscure;
                    });
                  },
                  child: Icon(CupertinoIcons.eye)):InkWell(
                  onTap: (){
                    setState(() {
                      obscure=!obscure;
                    });
                  },
                  child: Icon(CupertinoIcons.eye_slash)),
              hintColor: Color(0xff666666),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.04,
            ),
            TextButton(
                style: ElevatedButton.styleFrom(
                 primary: Color(0xffE27D5F),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 14),
                ),
                onPressed: () {
                  if(name== "traveller"){
                    // print("BC");
                    Navigator.of(context).push(
                        MaterialPageRoute(builder:
                            (context) => bottomNavigationBar()
                        )
                    );
                  } else if (name == "guider"){
                    // print("Kamina");
                    Navigator.of(context).push(
                        MaterialPageRoute(builder:
                            (context) => guiderBottomNavigationBar()
                        )
                    );
                  }
                  // Get.offAll(bottomNavigationBar());
                  },
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    fontSize: 20.sp,
                      color: Colors.white, fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 5,
            ),
            InkWell(
                onTap: (){Get.to(ForgetPassword());},
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget Password',
                    style: GoogleFonts.poppins(color: Color(0xff494A4A),fontSize: 18.sp,fontWeight:FontWeight.w500),
                  )),
            ),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.02,
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
                        style: GoogleFonts.poppins(color: Color(0xff666666,),fontWeight:FontWeight.w400,fontSize: 20.sp
                        ),
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
              height:MediaQuery.of(context).size.height*0.03,
            ),
            TextButton.icon(

                style: ElevatedButton.styleFrom(
                    primary: Color(0xffF1F6F7),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  // Get.offAll(guiderBottomNavigationBar());
                  },
                icon: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/google.png"),fit: BoxFit.fill)),
                ),
                label: Text(
                  "   Login with Google",
                  style: GoogleFonts.poppins(color: Color(0xff808B9B),fontSize: 20.sp,fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height:MediaQuery.of(context).size.height*0.12,
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
                      Get.to(SignUp());
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.poppins(
                          fontSize: 19.sp, color: Color(0xff494A4A),fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
