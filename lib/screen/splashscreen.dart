import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tugas/screen/login.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menambahkan delay sebelum navigasi ke halaman utama
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/kiriatas.png",
                    width: 140.0,
                    height: 120.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 180.0,
            // ),
            Center(
              child: Image.asset(
                "assets/images/Logo.png",
                width: 150.0,
                height: 100.0,
                fit: BoxFit.fill,
              ),
            ),
            // const SizedBox(
            //   height: 280.0,
            // ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/kananbawah.png",
                width: 120.0,
                height: 120.0,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
