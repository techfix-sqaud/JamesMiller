import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_slider/source/presentation/pages/introduction_slider.dart';
import 'package:introduction_slider/source/presentation/widgets/background_decoration.dart';
import 'package:introduction_slider/source/presentation/widgets/buttons.dart';
import 'package:introduction_slider/source/presentation/widgets/dot_indicator.dart';
import 'package:introduction_slider/source/presentation/widgets/introduction_slider_item.dart';

import 'login_register/login.dart';


class OB extends StatefulWidget {
  @override
  Onboarding createState() => Onboarding();
}
class Onboarding extends State<OB> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
  }
  @override
  Widget build(BuildContext context) {
    return IntroductionSlider(
      scrollDirection: Axis.vertical,
      items: [
        IntroductionSliderItem(
          backgroundImageDecoration: BackgroundImageDecoration(
            image: AssetImage("assets/img.png"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            opacity: 1.0,
          ),
          logo: Image.asset(
            "assets/1.png",
            height: 300,
          ),
          title: Text(
            "Easy Streaming",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
          ),
          subtitle: Center(
            child: Text(
              "Choose your plan to watch live \nmatch your favourite club.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
          ),
          backgroundColor: Color(0xff2E2E2E),
        ),
        IntroductionSliderItem(
          logo: Image.asset(
            "assets/3_1.png",
            height: 300,
          ),
          title: Text(
            "Always Uptodate",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
          ),
          subtitle: Center(
            child: Text(
              "Stay updated with match highlight,\n preview and hot news",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
          ),
          backgroundColor: Color(0xff2E2E2E),
          backgroundImageDecoration: BackgroundImageDecoration(
            image: AssetImage("assets/img_1.png"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            opacity: 1.0,
          ),
        ),
        IntroductionSliderItem(
          logo: Image.asset(
            "assets/2_1.png",
            height: 300,
          ),
          title: Text(
            "Get Amazing Reward",
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 26, fontWeight: FontWeight.w600),
          ),
          subtitle: Center(
            child: Text(
              "Redeem your points to get an \namazing reward",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w300),
            ),
          ),
          backgroundColor: Color(0xff2E2E2E),
          backgroundImageDecoration: BackgroundImageDecoration(
            image: AssetImage("assets/img_3.jpg"),
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.darken,
            ),
            fit: BoxFit.cover,
            opacity: 1.0,
          ),
        ),
      ],
      done: Done(
        child: Icon(Icons.done,color: Colors.white,),
        curve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 350),
        home: Login(),
      ),
      next: Next(
        child: Icon(Icons.arrow_forward,color: Colors.white,),
        curve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 350),
      ),
      back: Back(child: Icon(Icons.arrow_back,color: Colors.white,)),
      dotIndicator: DotIndicator(
          selectedColor: Color(0xff777777), unselectedColor: Color(0xff454343)),
    );
  }
}
