import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '/Constant/Theme.dart';

class formField extends StatefulWidget {
  final String title;
  final String hintText;
  final IconData? icon;
  final ValueChanged<String>? keyType;
  final TextEditingController? textEditingController;
  final ValueChanged<String>? onChanged;

  const formField({
    Key? key,
    required this.title,
    required this.hintText,
    this.icon,
    this.keyType,
    this.textEditingController,
    this. onChanged,
  }) : super(key: key);

  @override
  State<formField> createState() => _CustomFieldState();
}

class _CustomFieldState extends State<formField>{
  final TextEditingController _controller = TextEditingController();
  bool _passMode = true;
  bool _obscureText = true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(widget.title,
            style: body2)),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onChanged: widget.onChanged,
            textAlign: TextAlign.left,
            controller: _controller,
            decoration: InputDecoration(
              filled: true,
              fillColor: fieldColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.h),
                borderSide: BorderSide(width: 2, color: fieldColor)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.h),
                borderSide: BorderSide(width: 2, color: borderColor)
              ),
              prefixIconColor: bodyTextColor,
              hintText: widget.hintText,
              hintStyle: hintText,
              prefixIcon: Icon(widget.icon)
            ),
          ),
        ],
      ),
    );
  }
}