import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
import 'package:flutter/cupertino.dart';
class ChangePassword extends StatefulWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
var obscure=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),

      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff666666),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        children: [
          SizedBox(
              height:MediaQuery.of(context).size.height*0.05
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Update your",
                style: GoogleFonts.poppins(
                    color: Color(0xff183046), fontSize:36.sp,fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Password",
                style: GoogleFonts.poppins(
                    color: Color(0xff183046), fontSize: 36.sp,fontWeight: FontWeight.w500)),
          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "New Password",
            hintColor: Color(0xff666666),

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
          ),
          SizedBox(height: 10,),
          CustomTextFields(
            hintText: "Confirm Password",
            hintColor: Color(0xff666666),

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

          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                backgroundColor: Color(0xffE27D5F),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 14),
              ),
              onPressed: () {},
              child: Text(
                "Confirm Changes",
                style: GoogleFonts.poppins(
                    color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20.sp),
              )),
          SizedBox(
            height: 15,
          ),


        ],
      ),
    );
  }
}
