import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tugas/Constant/Theme.dart';

class addressBar extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color warna;
  final String Caption;

  const addressBar({
    required this.icon,
    required this.title,
    required this.warna,
    required this.Caption,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Container(
        height: 95.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: fieldColor,
          borderRadius: BorderRadius.circular(16.h)
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: primaryColor,
                radius: 25,
                child: Icon(
                    icon,
                    size: 30,
                    color: warna)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5.h),
                      Text(title, style: body2),
                      SizedBox(width: 125.h),
                      IconButton(onPressed: (){}, icon: Icon(Icons.edit_location_alt)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        Caption,
                        maxLines: 2,
                        //overflow: TextOverflow.visible,
                        style: body2.copyWith(color: captionTextColor),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}