import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tugas/Constant/Theme.dart';
import 'package:tugas/components/addressbar.dart';
import 'package:tugas/components/submitbtn.dart';
import 'package:tugas/screen/newAddress.dart';



class myAddress extends StatelessWidget{
  const myAddress({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: true,
            centerTitle: false,
            titleSpacing: 0.0,
            backgroundColor: appBarColor,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              icon: const Icon(Icons.chevron_left),
              color: appBarIconsColor,
            ),
            title: Text("My Address", style: appBarText),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  addressBar(icon: Icons.home_outlined, title: "HOME", warna: Color(0xFF2790C3), Caption: "2464 Royal Ln. Mesa, New Jersey 45463"),
                  addressBar(icon: Icons.work_outline, title: "WORK", warna: Color(0xFFA03BB1), Caption: "3891 Ranchview Dr. Ri, California 62639"),
                  SizedBox(height: 400.h),
                  submitBtn(
                    onPress: () => Navigator.push(
                      context,
                      CupertinoPageRoute(builder: (_) => newAddress()),
                    ),
                    submit: "ADD NEW ADDRESS",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}