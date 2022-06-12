import 'package:app_agricultor/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const SignInPage()),
    );
  }

  Widget _buildFullscreenImage(String assetName) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFF2FBE2),
            Color(0xFFF7FBF0),
          ],
        ),
      ),
      child: Image.asset(
        assetName,
        fit: BoxFit.fitWidth,
        height: 400,
        width: double.infinity,
      ),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    final pageDecoration = PageDecoration(
      titleTextStyle: GoogleFonts.inter(
        color: const Color(0xFF114C3A),
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      ),
      bodyTextStyle: GoogleFonts.inter(
        color: const Color(0xFF4D6322),
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      ),
      titlePadding: const EdgeInsets.fromLTRB(16.0, 26.0, 16.0, 16.0),
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: const Color(0xFFCCE59D),
      // controlsPosition: Position(
      //   bottom: 266.h,
      //   right: 0,
      //   left: 0,
      // ),
      globalHeader: Align(
        alignment: Alignment.topCenter,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 16, right: 16),
            child: Center(
              child: _buildImage('Logo.png', 100),
            ),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "Proteja Nossa Terra",
          body:
              "Faça da Terra um mapa para a vida real. A vida pode ser melhor se estiver nas mãos certas e livre da poluição do ar e das fábricas.",
          image: _buildFullscreenImage('assets/onboarding_one.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            pageColor: const Color(0xFFCCE59D),
            bodyFlex: 3,
            imageFlex: 3,
          ),
          // reverse: true,
          footer: Column(
            children: [
              SizedBox(height: 150.h),
              InkWell(
                onTap: () {
                  _onIntroEnd(context);
                },
                child: Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFC865A), borderRadius: BorderRadius.circular(40.r)),
                  child: Center(
                    child: Text(
                      'Próximo',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        PageViewModel(
          title: 'Plante Uma Arvore',
          body:
              "Faça nossa Terra crescer com muitas plantas a partir do plantio de uma árvore com vários tipos de plantas em nossa terra.",
          image: _buildFullscreenImage('assets/onboarding_one.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            pageColor: const Color(0xFFCCE59D),
            bodyFlex: 3,
            imageFlex: 3,
          ),
          footer: InkWell(
            onTap: () {
              _onIntroEnd(context);
            },
            child: Column(
              children: [
                SizedBox(height: 150.h),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFC865A),
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        PageViewModel(
          title: "Mantenha a saúde das plantas",
          body:
              "Através de plantas férteis na terra, produzimos benefícios extraordinários e produzimos de forma limpa e saudável.",
          image: _buildFullscreenImage('assets/onboarding_one.png'),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            pageColor: const Color(0xFFCCE59D),
            bodyFlex: 3,
            imageFlex: 3,
          ),
          footer: InkWell(
            onTap: () {
              _onIntroEnd(context);
            },
            child: Column(
              children: [
                SizedBox(height: 150.h),
                Container(
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFC865A),
                    borderRadius: BorderRadius.circular(40.r),
                  ),
                  child: Center(
                    child: Text(
                      'Let’s Get Started',
                      style: GoogleFonts.inter(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      curve: Curves.fastLinearToSlowEaseIn,
      showNextButton: false,
      showDoneButton: false,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFF90AC5A),
        activeSize: Size(22.0, 10.0),
        activeColor: Color(0xFFFC865A),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
