import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/Widgets/Save/saveWidget.dart';

class Saved extends StatelessWidget {
  const Saved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(
            color: Color(0xff666666)
        ),


        actions: [
          InkWell(
            onTap: (){
            },
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/Ellipse 1.png",),

              backgroundColor: Colors.pink,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saved Collection',
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff183046)),
                  ),
                  Icon(Icons.arrow_forward,color: Colors.grey,),
                ],
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Savedwidget();
                },
              ),
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
