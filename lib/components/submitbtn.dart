import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '/Constant/Theme.dart';

class submitBtn extends StatelessWidget{
  final VoidCallback onPress;
  final String submit;
  const submitBtn({
    Key? key,
    required this.onPress,
    required this.submit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            onPressed: onPress,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.h),
                ),
              ),
            ),
            child:
            Text(submit, style: submitText)
        ),
      ),
    );
  }
}