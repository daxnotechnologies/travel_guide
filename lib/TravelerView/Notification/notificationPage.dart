import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/NotificationWidgets/notificationPageWidgets.dart';
import 'package:travel_guide/Widgets/TopAppBar/topAppBar.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),


      body: SafeArea(
        child:NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification? overscroll) {
            overscroll!.disallowIndicator();
            return true;
          },
          child:SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      TopAppBar(),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Notifications',style: GoogleFonts.poppins(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff494A4A)),),
                            Icon(Icons.notifications_on_outlined,size: 20,color: Color(0xff494A4A),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  ),
                ), Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return NotificationPageWidget();
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
