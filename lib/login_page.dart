import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:logo_app/app_colors.dart';
import 'package:logo_app/widgets/custom_text_field.dart';
import 'package:logo_app/widgets/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 160),
                Center(child: Logo()),
                Text(
                  "Welcome back!",
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 13),
                Text(
                  "Log in to existing LOGO accoun",
                  maxLines: 2,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
                CustomTextField(
                  controller: username,
                  hint: "Username",
                  icon: Icons.person_outline_outlined,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  controller: username,
                  hint: "Password",
                  icon: Icons.lock,
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password",
                    maxLines: 2,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 199,
                  height: 53,

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 80,
                        spreadRadius: 2,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [AppColors.primary, Colors.black45],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Or Sign in with",
                  maxLines: 2,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Ionicons.logo_facebook,
                      color: Colors.blue.shade900,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Ionicons.logo_google,
                      color: Colors.red.shade700,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Icon(Ionicons.logo_apple, size: 30),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    children: [
                      Text(
                        "                  Create an account?",

                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "  Sign Up",
                        maxLines: 2,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
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
          left: 40,
          child: SvgPicture.asset("assets/images/Rec2.svg"),
        ),
        Positioned(
          right: 120,
          child: SvgPicture.asset("assets/images/Rec1.svg"),
        ),
      ],
    );
  }
}
