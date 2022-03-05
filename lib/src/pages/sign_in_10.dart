import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInTen extends StatefulWidget {
  const SignInTen({Key? key}) : super(key: key);

  @override
  State<SignInTen> createState() => _SignInTenState();
}

class _SignInTenState extends State<SignInTen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF8F8F8),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(size),
              buildFooter(size),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(Size size) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      width: size.width * 0.9,
      height: size.height * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //logo & login text here
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                logo(size.height / 8, size.height / 8),
                SizedBox(
                  height: size.height * 0.03,
                ),
                richText(24),
              ],
            ),
          ),

          //email , password textField and rememberForget text here
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                emailTextField(size),
                SizedBox(
                  height: size.height * 0.02,
                ),
                passwordTextField(size),
                SizedBox(
                  height: size.height * 0.01,
                ),

                //remember & forget text
                buildRemember_ForgetSection(size),
              ],
            ),
          ),

          //sign in button, 'don't have account' text and social button here
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //sign in button here
                signInButton(size),
                SizedBox(
                  height: size.height * 0.02,
                ),

                //don't have account text here
                buildNoAccountText(),
                SizedBox(
                  height: size.height * 0.02,
                ),

                //sign in with google & facebook button here
                google_facebookButton(size),
              ],
            ),
          ),
        ],
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
            height: 1.59,
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
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget logo(double height_, double width_) {
    return SvgPicture.asset(
      'assets/logo2.svg',
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
    return SizedBox(
      height: size.height / 12,
      child: TextField(
        controller: emailController,
        style: GoogleFonts.inter(
          fontSize: 18.0,
          color: const Color(0xFF151624),
        ),
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          hintText: 'Enter your email',
          hintStyle: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF151624).withOpacity(0.5),
          ),
          fillColor: emailController.text.isNotEmpty
              ? Colors.transparent
              : const Color.fromRGBO(248, 247, 251, 1),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: emailController.text.isEmpty
                    ? Colors.transparent
                    : const Color.fromRGBO(44, 185, 176, 1),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                color: Color.fromRGBO(44, 185, 176, 1),
              )),
          prefixIcon: Icon(
            Icons.mail_outline_rounded,
            color: emailController.text.isEmpty
                ? const Color(0xFF151624).withOpacity(0.5)
                : const Color.fromRGBO(44, 185, 176, 1),
            size: 16,
          ),
          suffix: Container(
            alignment: Alignment.center,
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: const Color.fromRGBO(44, 185, 176, 1),
            ),
            child: emailController.text.isEmpty
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
      height: size.height / 12,
      child: TextField(
        controller: passController,
        style: GoogleFonts.inter(
          fontSize: 18.0,
          color: const Color(0xFF151624),
        ),
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        cursorColor: const Color(0xFF151624),
        decoration: InputDecoration(
          hintText: 'Enter your password',
          hintStyle: GoogleFonts.inter(
            fontSize: 16.0,
            color: const Color(0xFF151624).withOpacity(0.5),
          ),
          fillColor: passController.text.isNotEmpty
              ? Colors.transparent
              : const Color.fromRGBO(248, 247, 251, 1),
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: BorderSide(
                color: passController.text.isEmpty
                    ? Colors.transparent
                    : const Color.fromRGBO(44, 185, 176, 1),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide: const BorderSide(
                color: Color.fromRGBO(44, 185, 176, 1),
              )),
          prefixIcon: Icon(
            Icons.lock_outline_rounded,
            color: passController.text.isEmpty
                ? const Color(0xFF151624).withOpacity(0.5)
                : const Color.fromRGBO(44, 185, 176, 1),
            size: 16,
          ),
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

  Widget buildRemember_ForgetSection(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: const Color(0xFF21899C),
            ),
            child: const Icon(
              Icons.check,
              size: 13,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Remember me',
            style: GoogleFonts.inter(
              fontSize: 15.0,
              color: const Color(0xFF0C0D34),
            ),
          ),
          const Spacer(),
          Text(
            'Forgot password?',
            style: GoogleFonts.inter(
              fontSize: 13.0,
              color: const Color(0xFF21899C),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
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

  Widget google_facebookButton(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //google button
        Container(
          alignment: Alignment.center,
          width: size.width / 2.8,
          height: size.height / 13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFFEA4335),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 24.0,
                height: 24.0,
                color: const Color(0xFFC4C4C4).withOpacity(0.0),
                child: SvgPicture.string(
                  // Group 59
                  '<svg viewBox="1.0 0.0 22.92 22.92" ><path transform="translate(1.0, 0.0)" d="M 22.6936149597168 9.214142799377441 L 21.77065277099609 9.214142799377441 L 21.77065277099609 9.166590690612793 L 11.45823860168457 9.166590690612793 L 11.45823860168457 13.74988651275635 L 17.93386268615723 13.74988651275635 C 16.98913192749023 16.41793632507324 14.45055770874023 18.33318138122559 11.45823860168457 18.33318138122559 C 7.661551475524902 18.33318138122559 4.583295345306396 15.25492572784424 4.583295345306396 11.45823860168457 C 4.583295345306396 7.661551475524902 7.661551475524902 4.583295345306396 11.45823860168457 4.583295345306396 C 13.21077632904053 4.583295345306396 14.80519008636475 5.244435787200928 16.01918983459473 6.324374675750732 L 19.26015281677246 3.083411931991577 C 17.21371269226074 1.176188230514526 14.47633838653564 0 11.45823860168457 0 C 5.130426406860352 0 0 5.130426406860352 0 11.45823860168457 C 0 17.78605079650879 5.130426406860352 22.91647720336914 11.45823860168457 22.91647720336914 C 17.78605079650879 22.91647720336914 22.91647720336914 17.78605079650879 22.91647720336914 11.45823860168457 C 22.91647720336914 10.68996334075928 22.83741569519043 9.940022468566895 22.6936149597168 9.214142799377441 Z" fill="#ffc107" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(2.32, 0.0)" d="M 0 6.125000953674316 L 3.764603137969971 8.885863304138184 C 4.78324031829834 6.363905429840088 7.250198841094971 4.583294868469238 10.13710117340088 4.583294868469238 C 11.88963890075684 4.583294868469238 13.48405265808105 5.244434833526611 14.69805240631104 6.324373722076416 L 17.93901443481445 3.083411693572998 C 15.89257335662842 1.176188111305237 13.15520095825195 0 10.13710117340088 0 C 5.735992908477783 0 1.919254422187805 2.484718799591064 0 6.125000953674316 Z" fill="#ff3d00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(2.26, 13.78)" d="M 10.20069408416748 9.135653495788574 C 13.16035556793213 9.135653495788574 15.8496036529541 8.003005981445312 17.88286781311035 6.161093711853027 L 14.33654403686523 3.160181760787964 C 13.14749050140381 4.064460277557373 11.69453620910645 4.553541660308838 10.20069408416748 4.55235767364502 C 7.220407009124756 4.55235767364502 4.689855575561523 2.6520094871521 3.736530303955078 0 L 0 2.878881216049194 C 1.896337866783142 6.589632034301758 5.747450828552246 9.135653495788574 10.20069408416748 9.135653495788574 Z" fill="#4caf50" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(12.46, 9.17)" d="M 11.23537635803223 0.04755179211497307 L 10.31241607666016 0.04755179211497307 L 10.31241607666016 0 L 0 0 L 0 4.583295345306396 L 6.475625038146973 4.583295345306396 C 6.023715496063232 5.853105068206787 5.209692478179932 6.962699413299561 4.134132385253906 7.774986743927002 L 4.135851383209229 7.773841857910156 L 7.682177066802979 10.77475357055664 C 7.431241512298584 11.00277233123779 11.45823955535889 8.020766258239746 11.45823955535889 2.291647672653198 C 11.45823955535889 1.523372769355774 11.37917804718018 0.773431122303009 11.23537635803223 0.04755179211497307 Z" fill="#1976d2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  width: 22.92,
                  height: 22.92,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Google',
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: const Color(0xFFEA4335),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),

        const SizedBox(width: 16),

        //facebook button
        Container(
          alignment: Alignment.center,
          width: size.width / 2.8,
          height: size.height / 13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFF4285F4),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                width: 24.0,
                height: 24.0,
                color: const Color(0xFFC4C4C4).withOpacity(0.0),
                child: SvgPicture.string(
                  // layer1
                  '<svg viewBox="0.3 0.27 22.44 22.44" ><defs><linearGradient id="gradient" x1="0.500031" y1="0.970054" x2="0.500031" y2="0.0"><stop offset="0.0" stop-color="#ff0062e0"  /><stop offset="1.0" stop-color="#ff19afff"  /></linearGradient></defs><path transform="translate(0.3, 0.27)" d="M 9.369577407836914 22.32988739013672 C 4.039577960968018 21.3760986328125 0 16.77546882629395 0 11.22104930877686 C 0 5.049472332000732 5.049472808837891 0 11.22105026245117 0 C 17.39262962341309 0 22.44210624694824 5.049472332000732 22.44210624694824 11.22104930877686 C 22.44210624694824 16.77546882629395 18.40252304077148 21.3760986328125 13.07252502441406 22.32988739013672 L 12.45536518096924 21.8249397277832 L 9.986735343933105 21.8249397277832 L 9.369577407836914 22.32988739013672 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(6.93, 4.65)" d="M 8.976840972900391 9.986734390258789 L 9.481786727905273 6.844839572906494 L 6.508208274841309 6.844839572906494 L 6.508208274841309 4.656734466552734 C 6.508208274841309 3.759051322937012 6.844841003417969 3.085787773132324 8.191367149353027 3.085787773132324 L 9.650103569030762 3.085787773132324 L 9.650103569030762 0.2244201600551605 C 8.864629745483398 0.1122027561068535 7.966946125030518 0 7.181471347808838 0 C 4.600629806518555 0 2.805262804031372 1.570946097373962 2.805262804031372 4.376209735870361 L 2.805262804031372 6.844839572906494 L 0 6.844839572906494 L 0 9.986734390258789 L 2.805262804031372 9.986734390258789 L 2.805262804031372 17.8975715637207 C 3.422420024871826 18.00978851318359 4.039577484130859 18.06587600708008 4.656735897064209 18.06587600708008 C 5.273893356323242 18.06587600708008 5.89105224609375 18.009765625 6.508208274841309 17.8975715637207 L 6.508208274841309 9.986734390258789 L 8.976840972900391 9.986734390258789 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                  width: 22.44,
                  height: 22.44,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Facebook',
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: const Color(0xFF4285F4),
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildFooter(Size size) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.03),
      child: Text.rich(
        TextSpan(
          style: GoogleFonts.inter(
            fontSize: 12.0,
            color: Colors.black,
          ),
          children: const [
            TextSpan(
              text: 'Don’t have an account? ',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            TextSpan(
              text: 'Sign Up here',
              style: TextStyle(
                color: Color(0xFFFF7248),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
