import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';
import 'package:travel_guide/Widgets/topContainer.dart';

class GuiderPayments extends StatelessWidget {
  const GuiderPayments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TopAppBar(),
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Withdraw",style: GoogleFonts.poppins(color: Color(0xffC38D9D),fontSize: 18,fontWeight: FontWeight.w500),),
                  )),
              SizedBox(height:40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,),
                child: Text("Your Balance",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
                child: Text("\$124.41",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 36,fontWeight: FontWeight.w500),),
              )
              ,

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,),
                child: Text("Recent Buyings",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: 86,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFFD),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.3)
                    ,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Color(0xff6CE19B),
                            radius: 20.r,
                            child: Icon(Icons.check,color: Colors.white70,size: 25,)),

                        SizedBox(width: 20,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rob Percivel",style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w400,color:Color(0xff183046)),),
                                    Text("\$12/hr",style: GoogleFonts.poppins(fontSize: 16.sp,fontWeight: FontWeight.w500,color:Color(0xff183046)),),

                                  ],
                                ),
                                Text("Conpleted 2 days ago",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12.sp,color: Color(0xff6A7A89)),)
                                ,

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 86,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    color: Color(0xffFFFFFFD),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 0.3)
                    ,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                    child: Row(
                      children: [
                        Container(
                          height:MediaQuery.of(context).size.height*0.15,
                          width: MediaQuery.of(context).size.width*0.11,
                          decoration:BoxDecoration(
                            color: Color(0xff6CE19B),
                            shape: BoxShape.circle,
                          ),



                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Center(child: Icon(Icons.check,color: Colors.white70,size: 25,)),
                          ),
                        ),
                        SizedBox(width: 20,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Rob Percivel",style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.w400,color:Color(0xff183046)),),
                                    Text("\$12/hr",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500,color:Color(0xff183046)),),

                                  ],
                                ),
                                Text("Conpleted 2 days ago",style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff6A7A89)),)
                                ,

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

            ],),
        ),
      ),
    );
  }
}

