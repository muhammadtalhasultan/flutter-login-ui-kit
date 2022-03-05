import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInEight extends StatefulWidget {
  const SignInEight({Key? key}) : super(key: key);

  @override
  State<SignInEight> createState() => _SignInEightState();
}

class _SignInEightState extends State<SignInEight> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: <Widget>[
              //welcome text here
              Expanded(
                flex: 2,
                child: welcomeText(),
              ),

              //logo and loginPage text here
              Expanded(
                flex: 3,
                child: Column(
                  children: <Widget>[
                    logo(size.height / 8, size.height / 8),
                    SizedBox(
                      height: size.height * 0.025,
                    ),
                    richText(20.42),
                  ],
                ),
              ),

              //username , password textField and remember_forget text here
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    UserNameTextField(size),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    passwordTextField(size),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    rememberForgetText(),
                  ],
                ),
              ),

              //sign in, create account button and have account text here
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    signInButton(size),
                    const Spacer(),
                    buildNoAccountText(),
                    const Spacer(),
                    buildCreateButton(size),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget welcomeText() {
    return Center(
      child: Text.rich(
        TextSpan(
          style: GoogleFonts.inter(
            fontSize: 22.0,
            color: Colors.black,
            height: 1.45,
          ),
          children: const [
            TextSpan(
              text: 'Welcome Back',
            ),
            TextSpan(
              text: ', ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: 'Login',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.underline,
              ),
            ),
            TextSpan(
              text: ' ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: 'for Continue !',
            ),
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
          fontSize: 20.42,
          color: const Color(0xFF21899C),
          letterSpacing: 2.0000000290903555,
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

  Widget UserNameTextField(Size size) {
    return SizedBox(
      height: size.height / 10,
      child: TextField(
        controller: usernameController,
        maxLines: 1,
        keyboardType: TextInputType.name,
        cursorColor: const Color.fromRGBO(44, 185, 176, 1),
        style: GoogleFonts.inter(
          fontSize: 17.0,
          color: const Color(0xFF36455A),
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          labelText: 'Username ',
          labelStyle: GoogleFonts.inter(
            fontSize: 12.0,
            color: const Color(0xFF6A6F7D).withOpacity(0.6),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: usernameController.text.isEmpty
                ? const Color(0xFF151624).withOpacity(0.5)
                : const Color.fromRGBO(44, 185, 176, 1),
          )),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromRGBO(44, 185, 176, 1),
          )),
          suffix: Container(
            alignment: Alignment.center,
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: const Color.fromRGBO(44, 185, 176, 1),
            ),
            child: usernameController.text.isEmpty
                ? const Center()
                : const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 13,
                  ),
          ),
        ),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return SizedBox(
      height: size.height / 10,
      child: TextField(
        controller: passController,
        maxLines: 1,
        obscureText: true,
        cursorColor: const Color.fromRGBO(44, 185, 176, 1),
        keyboardType: TextInputType.visiblePassword,
        style: GoogleFonts.inter(
          fontSize: 17.0,
          color: const Color(0xFF36455A),
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          labelText: 'Password ',
          labelStyle: GoogleFonts.inter(
            fontSize: 12.0,
            color: const Color(0xFF6A6F7D).withOpacity(0.6),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: passController.text.isEmpty
                ? const Color(0xFF151624).withOpacity(0.5)
                : const Color.fromRGBO(44, 185, 176, 1),
          )),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color.fromRGBO(44, 185, 176, 1),
          )),
          suffix: Container(
            alignment: Alignment.center,
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: const Color.fromRGBO(44, 185, 176, 1),
            ),
            child: passController.text.isEmpty
                ? const Center()
                : const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 13,
                  ),
          ),
        ),
      ),
    );
  }

  Widget rememberForgetText() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 13.0,
          height: 13.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFF6A6F7D),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          'Remember me',
          style: GoogleFonts.inter(
            fontSize: 11.0,
            color: const Color(0xFF6A6F7D),
          ),
        ),
        Expanded(
          child: Text(
            'Forgot Password?',
            style: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF6A6F7D),
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }

  Widget signInButton(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
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

  Widget buildNoAccountText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Expanded(
            flex: 2,
            child: Divider(
              color: Color(0xFF969AA8),
            )),
        Expanded(
          flex: 3,
          child: Text(
            'Don’t Have Account?',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFF969AA8),
              fontWeight: FontWeight.w500,
              height: 1.67,
            ),
          ),
        ),
        const Expanded(
            flex: 2,
            child: Divider(
              color: Color(0xFF969AA8),
            )),
      ],
    );
  }

  Widget buildCreateButton(Size size) {
    return Container(
      alignment: Alignment.center,
      height: size.height / 13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          width: 1.0,
          color: const Color(0xFF21899C),
        ),
      ),
      child: Text(
        'Create Account',
        style: GoogleFonts.inter(
          fontSize: 16.0,
          color: const Color(0xFF21899C),
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
