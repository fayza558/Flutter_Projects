import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo_app/login_page.dart';
import 'package:logo_app/widgets/logo.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 4),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (c) => LoginPage()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 115),
                Logo(),
                SizedBox(height: 20),
                Image.asset("assets/images/image.jpg", width: 800),
                SizedBox(height: 20),
                Text(
                  "LOREM IPSUM",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Lorem Ipsum is a dummy text\n      used as placeholder",
                        maxLines: 2,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 550,
          left: 60,

          child: SvgPicture.asset("assets/images/line.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 380,
          left: 34,

          child: SvgPicture.asset("assets/images/light.svg"),
        ),

        Positioned(
          top: 0,
          bottom: 600,
          left: 110,

          child: SvgPicture.asset("assets/images/line.svg"),
        ),
        Positioned(
          top: 0,
          bottom: 300,
          left: 83,

          child: SvgPicture.asset("assets/images/light.svg"),
        ),
      ],
    );
  }
}
