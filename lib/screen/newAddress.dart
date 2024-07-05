import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:tugas/components/addressCat.dart';
import 'package:tugas/components/form_field.dart';
import 'package:tugas/components/submitbtn.dart';
import '/Constant/Theme.dart';


class newAddress extends StatelessWidget {
  const newAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: ()=> FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3, // One-third of the screen height
                      child: Image.asset(
                        'assets/images/maps.png', // Replace with your image path
                        fit: BoxFit.cover, // This will make the image fill the container
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 15,
                      child: CircleAvatar(
                          backgroundColor: bodyTextColor,
                          radius: 25,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.chevron_left),
                            color: whiteIconColor,
                          ))),
                  ],
                ),
                Container(
                  //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        formField(title: "ADDRESS", hintText: "Limau Manis, Padang, Kota tercinta", icon: Icons.pin_drop),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("STREET", style: body2)),
                                  TextField(
                                    decoration:InputDecoration(
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
                                      hintText: "Limau Manis",
                                      hintStyle: hintText,
                                  ),
                                                              ),
                                ],
                              )),
                            SizedBox(width: 16.w), // Adjust spacing between fields
                            Expanded(
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.topLeft,
                                      child: Text("POST CODE", style: body2)),
                                  TextField(
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
                                      hintText: "25161",
                                      hintStyle: hintText,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        formField(title: "APPARTMENT", hintText: "123"),
                        SizedBox(height: 10.h),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Text("LABEL AS", style: body2)),
                        addressCat(),
                        SizedBox(height: 95.h),
                        submitBtn(
                          onPress: () => Get.back(),
                          submit: "SAVE LOCATION",
                        ),
                      ],
                    ),),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
