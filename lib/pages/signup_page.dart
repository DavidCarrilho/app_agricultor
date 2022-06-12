import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/text_field.dart';
import 'signin_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool checkBox = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Criar uma nova conta',
                style: GoogleFonts.inter(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF114C3A),
                ),
              ),
              Text(
                'Desfrute de excelentes recursos como um moderno\nAgricultor.',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF50555C),
                ),
              ),
              SizedBox(height: 26.h),
              socialMediaButton(),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 85.w,
                    height: 1.h,
                    color: const Color(0xFFA8ADB4),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ou cadastre-se com o e-mail',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFA8ADB4),
                      ),
                    ),
                  ),
                  Container(
                    width: 85.w,
                    height: 1.h,
                    color: const Color(0xFFA8ADB4),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Text(
                'Nome completo*',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6.h),
              const CustomTextFieldWidget(
                hintText: 'Endy Mandale',
                isPasswordField: false,
                icon: Icons.person_outline,
              ),
              SizedBox(height: 16.h),
              Text(
                'Email*',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6.h),
              const CustomTextFieldWidget(
                hintText: 'Endy@ecology',
                isPasswordField: false,
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 16.h),
              Text(
                'Senha*',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6.h),
              const CustomTextFieldWidget(
                hintText: '*********',
                isPasswordField: true,
                icon: Icons.email_outlined,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Checkbox(
                    value: checkBox,
                    onChanged: (value) {
                      if (value == false) {
                        setState(() {
                          checkBox = false;
                        });
                      } else {
                        setState(() {
                          checkBox = true;
                        });
                      }
                    },
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        if (states.contains(MaterialState.disabled)) {
                          return const Color(0xFF17C690);
                        }
                        return const Color(0xFF17C690);
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.center,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Ao se inscrever, você concorda com nossos ',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF50555C),
                                ),
                              ),
                              TextSpan(
                                text: 'Termos & Condições',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF17C690),
                                ),
                              ),
                              TextSpan(
                                text: ' e ',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF50555C),
                                ),
                              ),
                              TextSpan(
                                text: 'Politica de Privacidade',
                                style: GoogleFonts.inter(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF17C690),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26.h),
              Container(
                height: 50.h,
                decoration: BoxDecoration(
                    color: const Color(0xFFFC865A),
                    borderRadius: BorderRadius.circular(40.r)),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignInPage(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Já é um membro agricultor? ',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF50555C),
                          ),
                        ),
                        TextSpan(
                          text: 'Login ',
                          style: GoogleFonts.inter(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF17C690),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget socialMediaButton() {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(35.r),
          border: Border.all(
            color: const Color(0xFFDDDDDD),
            width: 1,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/google_logo.svg',
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(
            'Logon com o Google',
            style: GoogleFonts.inter(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
