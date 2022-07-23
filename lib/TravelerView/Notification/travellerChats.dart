import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/CustomTextFields.dart';
import 'package:travel_guide/Widgets/DropDown/perHourDropDown.dart';
import 'package:travel_guide/Widgets/GenerateOffer/GenerateOffer.dart';
import 'package:travel_guide/Widgets/OfferRecievedMessage/offerRecievedMessage.dart';
import 'package:travel_guide/Widgets/chatsAppBar/chatsAppBar.dart';
import 'package:travel_guide/Widgets/dynanamic_chatting_headder.dart';
import 'package:travel_guide/Widgets/offerSendMessage/offerSendMessage.dart';
import 'package:travel_guide/Widgets/recievedMessageWidget.dart';
import 'package:travel_guide/Widgets/sendMessageWidget.dart';
class TravellerChats extends StatelessWidget {
  const TravellerChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatingHeader(),

            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (OverscrollIndicatorNotification? overscroll) {
                    overscroll!.disallowIndicator();
                    return true;
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        sendMessageWidget(),
                        SizedBox(height: 30,),
                        RecievedMessageWidget(),
                        SizedBox(height: 30,),
                        sendMessageWidget(),
                        SizedBox(height: 30,),

                        OfferRecievedMessage(),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color:Colors.white,



                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextFormField(

                        decoration: InputDecoration(
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: ImageIcon(AssetImage("assets/Icons/Vector.png"),color: Color(0xff999999),size: 17,)),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.send,color: Color(0xff40B3A2),),
                              ),

                            ],
                          ),
                          contentPadding: EdgeInsets.all(10),
                          hintText: "Type here...",
                          helperStyle: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 17,color: Colors.grey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          )

                        ),
                      ),
                    ),
                  ),
                ),

              ),
            ),


          ],
        ),
      ),
    );
  }
}


