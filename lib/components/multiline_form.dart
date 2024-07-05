import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/Constant/Theme.dart';

class multiField extends StatefulWidget {
  final String title;
  final String hintText;
  final IconData icon;

  const multiField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.icon,
  }) : super(key: key);

  @override
  _multiFieldState createState() => _multiFieldState();
}

class _multiFieldState extends State<multiField> {
  final TextEditingController _controller = TextEditingController();

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
          TextField(
            keyboardType: TextInputType.multiline,
            controller: _controller,
            maxLines: 4,
            expands: false,
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
