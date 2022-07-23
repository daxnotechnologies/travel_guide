
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/GuiderView/GuiderDashboard/guiderDashBoard.dart';
import 'package:travel_guide/GuiderView/GuiderMainMenu/guiderMainMenu.dart';
import 'package:travel_guide/GuiderView/GuiderNotification/guiderConversationView.dart';
import 'package:travel_guide/GuiderView/GuiderNotification/guiderNotificationPage.dart';
import 'package:travel_guide/GuiderView/guiderSaved.dart';
import 'package:travel_guide/TravelerView/AllRequest/AllRequest.dart';
import 'package:travel_guide/TravelerView/Dashboard/dashBoard.dart';
import 'package:travel_guide/TravelerView/MainMenu/mainMenu.dart';
import 'package:travel_guide/TravelerView/Notification/conversationView.dart';
import 'package:travel_guide/TravelerView/Notification/notificationPage.dart';
import 'package:travel_guide/TravelerView/UserProfile/editProfile.dart';
import 'package:travel_guide/TravelerView/UserProfile/userProfile.dart';
import 'package:travel_guide/TravelerView/saved.dart';
class guiderBottomNavigationBar extends StatefulWidget {
  guiderBottomNavigationBar({Key,key,this.editProfile}) : super(key: key);
  var editProfile;
  @override
  guiderBottomNavigationBarState createState() => guiderBottomNavigationBarState();
}

class guiderBottomNavigationBarState extends State<guiderBottomNavigationBar> {

  @override
  void initState() {
    super.initState();
  }
  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex=0;
  static  List<Widget> _widgetOptions = <Widget>[
    GuiderDashBoard(),
    GuiderAllChats(),
    GuiderSaved(),
    GuiderNotificationPage(),
    GuiderMainMenu()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: GoogleFonts.poppins(fontSize: 7),
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 7),
        unselectedItemColor: Color(0xff183046),
        selectedItemColor:Color(0xffE27D5F),
        onTap: _onTap,
        currentIndex: selectedIndex,

        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text,),label: "Messages"),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.heart,),label: "Favouites"),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.bell,),label:"Alerts"),
          BottomNavigationBarItem(icon:Icon(CupertinoIcons.person,),label:"Profile"),

        ],

      ),
      body: widget.editProfile==true?EditProfile():_widgetOptions.elementAt(selectedIndex),
    );
  }
  void _onTap(int index)
  {
    selectedIndex = index;
    setState(() {
    });
  }
}

