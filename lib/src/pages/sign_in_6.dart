import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInSix extends StatelessWidget {
  const SignInSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromRGBO(33, 137, 156, 0.15),
            Colors.white,
            Colors.white,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //to give space from top
              const Expanded(flex: 1, child: Center()),

              //logo and text section
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    logo(size.height / 8, size.height / 8),
                    const SizedBox(
                      height: 16,
                    ),
                    richText(24),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Let’s login for explore continues',
                      style: GoogleFonts.inter(
                        fontSize: 14.0,
                        color: const Color(0xFF969AA8),
                      ),
                    ),
                  ],
                ),
              ),

              //sign in google and facebook section
              Expanded(flex: 2, child: signInGoogleFacebookButton(size)),

              //email and password textField section
              Expanded(
                flex: 5,
                child: Column(
                  children: [
                    //email textField
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Email',
                          style: GoogleFonts.inter(
                            fontSize: 14.0,
                            color: Colors.black,
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        emailTextField(size)
                      ],
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    //password textField
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Password',
                          style: GoogleFonts.inter(
                            fontSize: 14.0,
                            color: Colors.black,
                            height: 1.0,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        passwordTextField(size),
                      ],
                    ),

                    const SizedBox(
                      height: 16,
                    ),

                    //keep signed in and forget password section
                    keepSigned_ForgetSection(),
                  ],
                ),
              ),

              //sign in button section
              Expanded(flex: 1, child: signInButton(size)),

              //sign up text here
              Expanded(flex: 2, child: buildFooter(size)),
            ],
          ),
        ),
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
          fontSize: 24.0,
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
      height: size.height / 13,
      child: TextField(
        //controller: emailController,
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
            fontSize: 14.0,
            color: const Color(0xFFABB3BB),
            height: 1.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget passwordTextField(Size size) {
    return SizedBox(
      height: size.height / 13,
      child: TextField(
        //controller: emailController,
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
            fontSize: 14.0,
            color: const Color(0xFFABB3BB),
            height: 1.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }

  Widget keepSigned_ForgetSection() {
    return Row(
      children: <Widget>[
        Container(
          width: 24.0,
          height: 24.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(
              width: 0.7,
              color: const Color(0xFFD0D0D0),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          'Keep me signed in',
          style: GoogleFonts.inter(
            fontSize: 12.0,
            color: const Color(0xFFABB3BB),
            height: 1.17,
          ),
        ),
        Expanded(
          child: Text(
            'Forgot password?',
            style: GoogleFonts.inter(
              fontSize: 12.0,
              color: const Color(0xFFF56B3F),
              height: 1.17,
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }

  Widget buildRemember(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 17.0,
          height: 17.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            gradient: const LinearGradient(
              begin: Alignment(5.65, -1.0),
              end: Alignment(-1.0, 1.94),
              colors: [Color(0xFF00AD8F), Color(0xFF7BF4DF)],
            ),
          ),
          child: SvgPicture.string(
            // Vector 5
            '<svg viewBox="47.0 470.0 7.0 4.0" ><path transform="translate(47.0, 470.0)" d="M 0 1.5 L 2.692307710647583 4 L 7 0" fill="none" stroke="#ffffff" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>',
            width: 7.0,
            height: 4.0,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Text(
          'Remember me',
          style: GoogleFonts.inter(
            fontSize: 14.0,
            color: Colors.white,
            fontWeight: FontWeight.w600,
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
      ),
      child: Text(
        'Sign In',
        style: GoogleFonts.inter(
          fontSize: 14.0,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildContinueText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Expanded(
            child: Divider(
          color: Colors.white,
        )),
        Expanded(
          child: Text(
            'Or Continue with',
            style: GoogleFonts.inter(
              fontSize: 12.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const Expanded(
            child: Divider(
          color: Colors.white,
        )),
      ],
    );
  }

  Widget signInGoogleFacebookButton(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: size.width / 2.8,
          height: size.height / 13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFFEFEFEF),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.string(
                '<svg viewBox="-3.0 0.0 22.92 22.92" ><path transform="translate(-3.0, 0.0)" d="M 22.6936149597168 9.214142799377441 L 21.77065277099609 9.214142799377441 L 21.77065277099609 9.166590690612793 L 11.45823860168457 9.166590690612793 L 11.45823860168457 13.74988651275635 L 17.93386268615723 13.74988651275635 C 16.98913192749023 16.41793632507324 14.45055770874023 18.33318138122559 11.45823860168457 18.33318138122559 C 7.661551475524902 18.33318138122559 4.583295345306396 15.25492572784424 4.583295345306396 11.45823860168457 C 4.583295345306396 7.661551475524902 7.661551475524902 4.583295345306396 11.45823860168457 4.583295345306396 C 13.21077632904053 4.583295345306396 14.80519008636475 5.244435787200928 16.01918983459473 6.324374675750732 L 19.26015281677246 3.083411931991577 C 17.21371269226074 1.176188230514526 14.47633838653564 0 11.45823860168457 0 C 5.130426406860352 0 0 5.130426406860352 0 11.45823860168457 C 0 17.78605079650879 5.130426406860352 22.91647720336914 11.45823860168457 22.91647720336914 C 17.78605079650879 22.91647720336914 22.91647720336914 17.78605079650879 22.91647720336914 11.45823860168457 C 22.91647720336914 10.68996334075928 22.83741569519043 9.940022468566895 22.6936149597168 9.214142799377441 Z" fill="#ffc107" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-1.68, 0.0)" d="M 0 6.125000953674316 L 3.764603137969971 8.885863304138184 C 4.78324031829834 6.363905429840088 7.250198841094971 4.583294868469238 10.13710117340088 4.583294868469238 C 11.88963890075684 4.583294868469238 13.48405265808105 5.244434833526611 14.69805240631104 6.324373722076416 L 17.93901443481445 3.083411693572998 C 15.89257335662842 1.176188111305237 13.15520095825195 0 10.13710117340088 0 C 5.735992908477783 0 1.919254422187805 2.484718799591064 0 6.125000953674316 Z" fill="#ff3d00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(-1.74, 13.78)" d="M 10.20069408416748 9.135653495788574 C 13.16035556793213 9.135653495788574 15.8496036529541 8.003005981445312 17.88286781311035 6.161093711853027 L 14.33654403686523 3.160181760787964 C 13.14749050140381 4.064460277557373 11.69453620910645 4.553541660308838 10.20069408416748 4.55235767364502 C 7.220407009124756 4.55235767364502 4.689855575561523 2.6520094871521 3.736530303955078 0 L 0 2.878881216049194 C 1.896337866783142 6.589632034301758 5.747450828552246 9.135653495788574 10.20069408416748 9.135653495788574 Z" fill="#4caf50" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(8.46, 9.17)" d="M 11.23537635803223 0.04755179211497307 L 10.31241607666016 0.04755179211497307 L 10.31241607666016 0 L 0 0 L 0 4.583295345306396 L 6.475625038146973 4.583295345306396 C 6.023715496063232 5.853105068206787 5.209692478179932 6.962699413299561 4.134132385253906 7.774986743927002 L 4.135851383209229 7.773841857910156 L 7.682177066802979 10.77475357055664 C 7.431241512298584 11.00277233123779 11.45823955535889 8.020766258239746 11.45823955535889 2.291647672653198 C 11.45823955535889 1.523372769355774 11.37917804718018 0.773431122303009 11.23537635803223 0.04755179211497307 Z" fill="#1976d2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                width: 22.92,
                height: 22.92,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Google',
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          alignment: Alignment.center,
          width: size.width / 2.8,
          height: size.height / 13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 1.0,
              color: const Color(0xFFEFEFEF),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.string(
                // layer1
                '<svg viewBox="0.3 0.27 22.44 22.44" ><defs><linearGradient id="gradient" x1="0.500031" y1="0.970054" x2="0.500031" y2="0.0"><stop offset="0.0" stop-color="#ff0062e0"  /><stop offset="1.0" stop-color="#ff19afff"  /></linearGradient></defs><path transform="translate(0.3, 0.27)" d="M 9.369577407836914 22.32988739013672 C 4.039577960968018 21.3760986328125 0 16.77546882629395 0 11.22104930877686 C 0 5.049472332000732 5.049472808837891 0 11.22105026245117 0 C 17.39262962341309 0 22.44210624694824 5.049472332000732 22.44210624694824 11.22104930877686 C 22.44210624694824 16.77546882629395 18.40252304077148 21.3760986328125 13.07252502441406 22.32988739013672 L 12.45536518096924 21.8249397277832 L 9.986735343933105 21.8249397277832 L 9.369577407836914 22.32988739013672 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(6.93, 4.65)" d="M 8.976840972900391 9.986734390258789 L 9.481786727905273 6.844839572906494 L 6.508208274841309 6.844839572906494 L 6.508208274841309 4.656734466552734 C 6.508208274841309 3.759051322937012 6.844841003417969 3.085787773132324 8.191367149353027 3.085787773132324 L 9.650103569030762 3.085787773132324 L 9.650103569030762 0.2244201600551605 C 8.864629745483398 0.1122027561068535 7.966946125030518 0 7.181471347808838 0 C 4.600629806518555 0 2.805262804031372 1.570946097373962 2.805262804031372 4.376209735870361 L 2.805262804031372 6.844839572906494 L 0 6.844839572906494 L 0 9.986734390258789 L 2.805262804031372 9.986734390258789 L 2.805262804031372 17.8975715637207 C 3.422420024871826 18.00978851318359 4.039577484130859 18.06587600708008 4.656735897064209 18.06587600708008 C 5.273893356323242 18.06587600708008 5.89105224609375 18.009765625 6.508208274841309 17.8975715637207 L 6.508208274841309 9.986734390258789 L 8.976840972900391 9.986734390258789 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>',
                width: 22.44,
                height: 22.44,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                'Facebook',
                style: GoogleFonts.inter(
                  fontSize: 14.0,
                  color: Colors.black,
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
    return Center(
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
