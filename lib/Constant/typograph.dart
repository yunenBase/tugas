import 'package:flutter/material.dart';

//Headline
TextStyle boldHeadline1 = const TextStyle(fontFamily: 'Sen', fontWeight: FontWeight.w700, fontSize: 30);
TextStyle boldHeadline2 = boldHeadline1.copyWith(fontSize: 20);
TextStyle boldHeadline3 = boldHeadline1.copyWith(fontSize: 18);
TextStyle boldHeadline4 = boldHeadline1.copyWith(fontSize: 14);

TextStyle headline1 = const TextStyle(fontFamily: 'Sen', fontSize: 20);
TextStyle headline2 = headline1.copyWith(fontSize: 18);

//Body
TextStyle body1 = headline1.copyWith(fontSize: 16);
TextStyle body2 = headline1.copyWith(fontSize: 14);
TextStyle boldBody = boldHeadline1.copyWith(fontSize: 16);

//Button
TextStyle submitText = boldHeadline4;
TextStyle smallSubmit = boldHeadline1.copyWith(fontSize: 12);
TextStyle chips = body2;

//etc
TextStyle hintText = headline1.copyWith(fontSize: 14);
TextStyle captionText = headline1.copyWith(fontSize: 12);
TextStyle appBarText = headline1.copyWith(fontSize: 17);