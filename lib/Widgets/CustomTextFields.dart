import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomTextFields extends StatelessWidget {
  CustomTextFields(
      {this.controller,
        this.obscure,
        this.height,
        this.validator,
        this.hintText,
        this.label,
        this.onchanged,this.prefixIcon,this.onsaved,this.onpressedLeading,this.leadinIcon,this.borderradius,this.hintColor,this.fillColor});
  var height;
  var fillColor;
  var hintText;
  var hintColor;
  var label;
  var borderradius;
  var onchanged;
  var onsaved;
  var controller;
  var prefixIcon;
  var leadinIcon;
  var onpressedLeading;
  var validator;
  var obscure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:5,horizontal: 10),
      child: Container(
        height: 50,
        child: TextFormField(
          obscureText: obscure??false,
          validator: validator ??
                  (String? value) {
                if (value!.isEmpty) {
                  return "Please fill out this feild";
                }
                return null;
              },
          cursorColor: Colors.black,
          style:GoogleFonts.poppins(color: Colors.black,),
          // cursorWidth: 20,
          decoration: InputDecoration(
            prefixIcon: prefixIcon??prefixIcon,
            suffixIcon: leadinIcon??leadinIcon,
            // fillColor: fillColor!=null?fillColor:Colors.white,
            // filled: true,
            // disabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
            //     borderSide: BorderSide(
            //       width: 1,
            //       color:Colors.white,
            //     )),
            // border: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
            //     borderSide: BorderSide(
            //       width: 1,
            //       color: Colors.white,
            //     )),
            // enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
            //     borderSide: BorderSide(
            //       width: 1,
            //       color:Colors.white,
            //     )),
            // focusedBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(borderradius!=null?borderradius:10),
            //     borderSide: BorderSide(
            //       width: 1,
            //       color: Colors.white,
            //     )),
            contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
            hintText: hintText ?? hintText,
            hintStyle: GoogleFonts.poppins(fontSize: 20.sp,fontWeight: FontWeight.w400,color: hintColor!=null?hintColor:Color(0xff666666),)),
            // hintStyle:  GoogleFonts.poppins()

          onChanged: onchanged ?? onchanged,
          onSaved: onsaved ?? onsaved,
          controller: controller ?? controller,
        ),
      ),
    );
  }
}
