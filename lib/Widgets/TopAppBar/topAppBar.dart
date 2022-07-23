import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_guide/TravelerView/MainMenu/mainMenu.dart';
import 'package:travel_guide/TravelerView/UserProfile/userProfile.dart';
class TopAppBar extends StatelessWidget {
  const TopAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back,color: Colors.black,size: 30,),
          ),
          InkWell(
            onTap: (){Get.to(MainMenu());},
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
            ),
          )
        ],
      ),
    );
  }
}
