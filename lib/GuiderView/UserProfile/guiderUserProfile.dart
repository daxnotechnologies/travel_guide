import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:travel_guide/Widgets/UserProfileWidget/review.dart';

class GuiderUserProfile extends StatelessWidget {
  const GuiderUserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xff666666), size: 25),
        actions: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage("assets/images/Ellipse 1.png"),
            backgroundColor: Colors.pink,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dean",
                    style: GoogleFonts.poppins(
                        color: Color(0xff494A4A),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$4/Hour",
                        style: GoogleFonts.poppins(
                            color: Color(0xff494A4A),

                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.08,
                          child: Image(
                              image: AssetImage("assets/images/gridview.png"))),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  "From Pioneers to Private Mega-Yachts: A Half-Day Tour through 126 Years",
                  maxLines: 3,
                  textAlign: TextAlign.justify,
                  style:
                      GoogleFonts.poppins(fontSize: 16, color: Color(0xff666666)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),

                      image: DecorationImage(
                          image: AssetImage("assets/images/Rectangle 13 .png"),
                          fit: BoxFit.cover
                      )),
                ),
              ),
              SizedBox(height: 30,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Reviews (234)",
                  style: GoogleFonts.poppins(
                      color: Color(0xff494A4A),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1.0
,),
              SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.243,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Review();
                    },
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Divider(thickness: 1.0
,),
              SizedBox(height: 30,),
              TextButton(
                  style: TextButton.styleFrom(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
                    backgroundColor: Color(0xff85CDCA
                    )
                  ),
                  onPressed: (){}, child: Text(
                'Start Conversation',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white),
              )),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
