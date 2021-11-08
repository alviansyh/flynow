import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.00;
double defaultRadius = 14.00;

Color kPrimaryColor = const Color(0xff003CBE);
Color kSecondaryColor = const Color(0xff9DBCFF);
Color kBlackColor = const Color(0xff1F1449);
Color kWhiteColor = const Color(0xffFFFFFF);
Color kGreyColor = const Color(0xff9698A9);
Color kOrangeColor = const Color(0xffFFA235);
Color kGreenColor = const Color(0xff0EC3AE);
Color kRedColor = const Color(0xffF65454);
Color kBackgroundColor = const Color(0xffFAFAFA);
Color kInactiveColor = const Color(0xffCDD2FF);
Color kUnavailableColor = const Color(0xffEBECF1);
Color kTransparentColor = Colors.transparent;

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: kGreenColor,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: kRedColor,
);

TextStyle blueTextStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;