import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_ui_demo/src/pages/sign_in_1.dart';
import 'package:login_ui_demo/src/pages/sign_in_2.dart';
import 'package:login_ui_demo/src/pages/sign_in_3.dart';
import 'package:login_ui_demo/src/pages/sign_in_4.dart';
import 'package:login_ui_demo/src/pages/sign_in_5.dart';
import 'package:login_ui_demo/src/pages/sign_in_6.dart';
import 'package:login_ui_demo/src/pages/sign_in_7.dart';
import 'package:login_ui_demo/src/pages/sign_in_8.dart';
import 'package:login_ui_demo/src/pages/sign_in_9.dart';
import 'package:login_ui_demo/src/pages/sign_in_10.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context)
              .copyWith(scrollbars: false), //to hide scrollbar
          child: ListView(
            children: [
              logo(100, 100),
              const SizedBox(
                height: 16,
              ),
              richText(18),
              buildButton(
                'Design 1',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInOne(),
                  ),
                ),
              ),
              buildButton(
                'Design 2',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInTwo(),
                  ),
                ),
              ),
              buildButton(
                'Design 3',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInThree(),
                  ),
                ),
              ),
              buildButton(
                'Design 4',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInFour(),
                  ),
                ),
              ),
              buildButton(
                'Design 5',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInFive(),
                  ),
                ),
              ),
              buildButton(
                'Design 6',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInSix(),
                  ),
                ),
              ),
              buildButton(
                'Design 7',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInSeven(),
                  ),
                ),
              ),
              buildButton(
                'Design 8',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInEight(),
                  ),
                ),
              ),
              buildButton(
                'Design 9',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInNine(),
                  ),
                ),
              ),
              buildButton(
                'Design 10',
                context,
                () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignInTen(),
                  ),
                ),
              ),
            ],
          ),
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
          letterSpacing: 3,
          height: 1.03,
        ),
        children: const [
          TextSpan(
            text: 'LOGIN ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'PAGES \nUI ',
            style: TextStyle(
              color: Color(0xFFFE9879),
              fontWeight: FontWeight.w800,
            ),
          ),
          TextSpan(
            text: 'KIT',
            style: TextStyle(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget buildButton(String txt, BuildContext context, VoidCallback onTap) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: size.height / 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFF21899C),
            ),
          ),
          child: Text(
            txt,
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 16.0,
              color: const Color(0xFF21899C),
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
