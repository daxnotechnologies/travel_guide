
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/topContainer.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child: Scaffold(
        body:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowGlow();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

              TopContainer(),
              SizedBox(height:40,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0,),
                child: Text("Active Amount",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
              ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 20),
                  child: Text("\$124.41",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 36,fontWeight: FontWeight.w500),),
                )
                ,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,),
                  child: Text("Active Cards",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        height: 53,
                        width: MediaQuery.of(context).size.width*0.2,
                        decoration: BoxDecoration
                          (
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/Rectangle 44.png"

                            ),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height:53,
                        width: MediaQuery.of(context).size.width*0.2,
                        decoration: BoxDecoration
                          (
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 44.png"

                                ),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(
                        height: 53,
                        width: MediaQuery.of(context).size.width*0.2,
                        decoration: BoxDecoration
                          (
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Rectangle 44.png"

                                ),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0,),
                  child: Text("Recent Buying's",style: GoogleFonts.poppins(color: Color(0xff183046),fontSize: 20,fontWeight: FontWeight.w400),),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Center(
                    child: Container(
                      height: 75,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFFD),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.3, color: Color(0xffDDDDDD))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                        child: Row(
                          children: [
                            Container(
                              height:MediaQuery.of(context).size.height*0.12,
                              width: MediaQuery.of(context).size.width* 0.08,
                              decoration:BoxDecoration(
                                color: Color(0xff6CE19B),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(child: Icon(Icons.check,color: Colors.white70,size: 18,)),
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
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Center(
                    child: Container(
                      height: 75,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFFFFD),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 0.3, color: Color(0xffDDDDDD))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 1),
                        child: Row(
                          children: [
                            Container(
                              height:MediaQuery.of(context).size.height*0.12,
                              width: MediaQuery.of(context).size.width* 0.08,
                              decoration:BoxDecoration(
                                color: Color(0xff6CE19B),
                                shape: BoxShape.circle,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Center(child: Icon(Icons.check,color: Colors.white70,size: 18,)),
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
                ),
                SizedBox(height: 20,),

            ],),
          ),
        ),
      ),
    );
  }
}
