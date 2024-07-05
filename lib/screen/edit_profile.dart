import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:tugas/components/form_field.dart';
import 'package:tugas/components/image_picker_dialog.dart';
import 'package:tugas/components/multiline_form.dart';
import 'package:tugas/components/submitbtn.dart';
import '../../Services/hive_services.dart';
import '../../Services/image_picker_service.dart';
import '/Constant/Theme.dart';

class editProfil extends StatefulWidget {
  const editProfil({Key? key}) : super(key: key);

  @override
  _editProfilState createState() => _editProfilState();
}

class _editProfilState extends State<editProfil> {
  Uint8List? _profileImageBytes;
  final HiveService _hiveService = HiveService(); // Initialize your Hive service
  final ImageService _imageService = ImageService(); // Initialize your image service

  void _updateProfileImage(Uint8List imageBytes) {
    setState(() {
      _profileImageBytes = imageBytes;
    });
    _hiveService.storeProfileImage(imageBytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: ()=> FocusScope.of(context).unfocus(),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                floating: true,
                pinned: false,
                snap: true,
                centerTitle: false,
                titleSpacing: 0.0,
                backgroundColor: appBarColor,
                leading: IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.chevron_left),
                  color: appBarIconsColor,
                ),
                title: Text("Edit Profile", style: appBarText),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    children: [
                      Form(
                        child: Column(
                          children: [
                            Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 130,
                                      child: CircleAvatar(
                                        radius: 75,
                                        backgroundColor: profileImage,
                                        backgroundImage: (_profileImageBytes != null)
                                            ? MemoryImage(_profileImageBytes!) as ImageProvider : AssetImage('assets/images/wf.jpg'),
                                      ),
                                    ),
                                    Positioned(
                                      left: 100,
                                      right: 8,
                                      bottom: 7,
                                      child: InkWell(
                                        onTap: () {
                                          // Show image picker dialog
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Dialog(
                                                child: ImagePickerPage(
                                                  onImagePicked: _updateProfileImage,
                                                ),
                                                insetPadding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 40.h),
                                              );
                                            },
                                          );
                                        },
                                        child: const CircleAvatar(
                                          backgroundColor: buttonColor,
                                          radius: 16,
                                          child: Icon(
                                            Icons.edit_outlined,
                                            color: whiteIconColor,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            formField(
                              title: "FULL NAME",
                              hintText: "Dinda",
                              icon: Icons.person,
                            ),
                            formField(
                              title: "EMAIL",
                              hintText: "Alul@gmail.com",
                              icon: Icons.mail_outline_outlined,
                            ),
                            formField(
                              title: "PHONE NUMBER",
                              hintText: "081234892389",
                              icon: Icons.call,
                            ),
                            multiField(
                              title: "BIO",
                              hintText:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                              icon: Icons.notes,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 100),
                      submitBtn(
                        onPress: () => Get.back(),
                        submit: "SAVE",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
