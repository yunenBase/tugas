import 'package:flutter/material.dart';

//Color Theme
const Color primaryColor = Color(0xFFFFFFFF);

//APPBAR
const Color appBarColor = primaryColor;

//SCAFFOLD
const Color scaffoldBackgroundColor = Colors.white;
const Color backgroundColor = Color(0xffffffff);
const Color dividerColor = Color(0xff686868);
const Color cardColor = Color(0xff98A8B8);
const Color fieldColor = Color(0xFFF0F5FA);

//ICONS
const Color appBarIconsColor = Color(0xFF181C2E);
const Color whiteIconColor = Color(0xFFFFFFFF);
const Color orangeIconColor = Color(0xFFFF7622);
const Color profileImage = Color(0xFFFFBF6D);

//BUTTON
const Color buttonColor = Color(0xFFFF7622);
const Color buttonTextColor = Color(0xffffffff);
const Color buttonDisabledColor = Color(0xFFF0F5FA);
const Color buttonDisabledTextColor = Color(0xFFFF7622);
const Color buttonDisabledBorder = Color(0xFFFF7622);

//TEXT
const Color bodyTextColor = Color(0xFF32343E);
const Color lightBodyTextColor = Color(0xFFA0A5BA);
const Color headlinesTextColor = Color(0xFF181C2E);
const Color captionTextColor = Color(0xFF646982);
const Color hintTextColor = Color(0xFFA0A5BA);
const Color textButtonColor = Color(0xFFFF7622);

//BORDER
const Color borderColor = Color(0xffCCCCCC);

//CURSOR
const Color cursorColor = Color(0xFF4F82F0);
const Color selectionColor = Color(0xffCCCCCC);

//chip
const Color chipBackground = Color(0xFFF58D1D);
const Color chipTextColor = Colors.white;

//Typograph
//Headline
TextStyle boldHeadline1 = const TextStyle(
    fontFamily: 'Sen', fontWeight: FontWeight.w700, fontSize: 30);
TextStyle boldHeadline2 = boldHeadline1.copyWith(fontSize: 20);
TextStyle boldHeadline3 = boldHeadline1.copyWith(fontSize: 18);
TextStyle boldHeadline4 = boldHeadline1.copyWith(fontSize: 14);

TextStyle headline1 = const TextStyle(fontFamily: 'Sen', fontSize: 20);
TextStyle headline2 = headline1.copyWith(fontSize: 18);

//Body
TextStyle body1 = headline1.copyWith(fontSize: 16, color: bodyTextColor);
TextStyle body2 = body1.copyWith(fontSize: 14);
TextStyle boldBody = boldHeadline1.copyWith(fontSize: 16);

//Button
TextStyle submitText =
    boldHeadline4.copyWith(fontSize: 16, color: buttonTextColor);
TextStyle smallSubmit = submitText.copyWith(fontSize: 12);
TextStyle cancelText = smallSubmit.copyWith(color: buttonDisabledTextColor);
TextStyle chipsEnabled = body2;
TextStyle chipsDisabled = body2.copyWith(color: buttonDisabledTextColor);

//etc
TextStyle hintText = headline1.copyWith(fontSize: 14, color: hintTextColor);
TextStyle captionText =
    headline1.copyWith(fontSize: 12, color: captionTextColor);
TextStyle appBarText =
    headline1.copyWith(fontSize: 17, color: appBarIconsColor);
