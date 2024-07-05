import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas/Constant/Theme.dart';

class addressCat extends StatefulWidget {
  const addressCat({Key? key}) : super(key: key);

  @override
  _addressCatState createState() => _addressCatState();
}

class _addressCatState extends State<addressCat> {
  int _selectedCategory = 0; // Variable to track the selected category index

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          categoryButton(0, "Home", _selectedCategory == 0),
          categoryButton(1, "Work", _selectedCategory == 1),
          categoryButton(2, "Other", _selectedCategory == 2),
        ],
      ),
    );
  }

  Widget categoryButton(int index, String text, bool isSelected) {
    Color buttonColor = isSelected ? chipBackground : buttonDisabledColor; // Orange for selected, white for unselected

    return ElevatedButton(
      onPressed: () {
        setState(() {
          _selectedCategory = index; // Update selected category index
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(horizontal: 35, vertical: 12),
        ),
      ),
      child: Text(
        text,
        style: body2.copyWith(color: isSelected ? primaryColor : bodyTextColor), // Text color based on isSelected
      ),
    );
  }
}
