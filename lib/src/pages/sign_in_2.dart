import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInTwo extends StatelessWidget {
  const SignInTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF21899C),
      body: SafeArea(
        child: Column(
          children: [
            //to give space from top
            const Expanded(
              flex: 1,
              child: Center(),
            ),

            //page content here
            Expanded(
              flex: 9,
              child: buildCard(size),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(Size size) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //header text
            Text(
              'Login Account',
              style: GoogleFonts.inter(
                fontSize: 24.0,
                color: const Color(0xFF15224F),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'Discover your social & Try to Login',
              style: GoogleFonts.inter(
                fontSize: 14.0,
                color: const Color(0xFF969AA8),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),

            //logo section
            logo(size.height / 8, size.height / 8),
            SizedBox(
              height: size.height * 0.03,
            ),
            richText(24),
            SizedBox(
              height: size.height * 0.05,
            ),

            //email & password section
            emailTextField(size),
            SizedBox(
              height: size.height * 0.02,
            ),
            passwordTextField(size),
            SizedBox(
              height: size.height * 0.03,
            ),

            //sign in button
            signInButton(size),
            SizedBox(
              height: size.height * 0.04,
            ),

            //footer section. sign up text here
            footerText(),
          ],
        ),
      ),
    );
  }

  Widget logo(double height_, double width_) {
    return SvgPicture.asset(
      'assets/logo.svg',
      height: height_,
      width: width_,
    );
  }

  Widget richText(double fontSize) {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: fontSize,
          color: const Color(0xFF21899C),
          letterSpacing: 2.000000061035156,
        ),
        children: const [
          TextSpan(
            text: 'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'PAGE',
            style: TextStyle(
              color: Color(0xFFFE9879),
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }

  Widget emailTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Email/ Phone number',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFFEFEFEF),
        ),
      ),
      child: TextField(
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF15224F),
        ),
        maxLines: 1,
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        cursorColor: const Color(0xFF15224F),
        decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
            ),
            border: InputBorder.none),
      ),
    );
  }

  Widget signInButton(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: const Color(0xFF21899C),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF4C2E84).withOpacity(0.2),
            offset: const Offset(0, 15.0),
            blurRadius: 60.0,
          ),
        ],
      ),
      child: Text(
        'Sign in',
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget footerText() {
    return Text.rich(
      TextSpan(
        style: GoogleFonts.inter(
          fontSize: 12.0,
          color: const Color(0xFF3B4C68),
        ),
        children: const [
          TextSpan(
            text: 'Don’t have an account ?',
          ),
          TextSpan(
            text: ' ',
            style: TextStyle(
              color: Color(0xFFFF5844),
            ),
          ),
          TextSpan(
            text: 'Sign up',
            style: TextStyle(
              color: Color(0xFFFF5844),
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
