import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/GuiderView/GuiderNotification/GuiderChats.dart';
import 'package:travel_guide/Widgets/NotificationWidgets/allChats.dart';

class GuiderAllChats extends StatelessWidget {
  const GuiderAllChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowIndicator();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
                  child: Row(

                    children: [
                      Icon(
                        Icons.arrow_back_outlined,
                        color: Color(0xff666666),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(

                            style: GoogleFonts.poppins(),

                            decoration: InputDecoration(
                              hintText: "Search Meassages",
                              contentPadding: EdgeInsets.all(0),
                              hintStyle: GoogleFonts.poppins(fontSize: 17),
                              prefixIcon: Icon(Icons.search,color: Colors.grey,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20,),
                                borderSide: BorderSide(
                                  color: Colors.white

                                ),


                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 3, color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // SizedBox(height: 5),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                          onTap: (){Get.to(GuiderChats());},
                          child: AllChat());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
