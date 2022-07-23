import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_guide/AuthView/LoginView/loginScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/splash.png"
                  ),
                  fit: BoxFit.cover,
                  // opacity: 100,
                )
            ),
          ),
          Positioned(
            top: 0,left: 0,bottom: 0,right: 0,
            child:  Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black.withOpacity(0.6),Colors.white.withOpacity(0.12)],

                  // linear-gradient(180deg, #6691C4 -18.52%, rgba(0, 0, 0, 0) 55.53%);
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 150,),
                  Padding(
                    padding: const EdgeInsets.only(left: 33, right: 34),
                    child: Column(
                      children: [
                        Text(
                          "Unforgotten",
                          style: GoogleFonts.poppins(
                            fontSize: 48.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Experience",
                          style: GoogleFonts.poppins(
                            fontSize: 48.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 32,),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Book your tour with us we have many packages to explore the world",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 18.sp,
                          color: Colors.white
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),]),




                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 74, vertical: 41),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFE27D5F),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        )
                    );
                    print(
                        "Continue..."
                    );
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.7,
                    height: 66,
                    child: Center(
                      child:  Text(
                        "Continue",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
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
    );
  }
}