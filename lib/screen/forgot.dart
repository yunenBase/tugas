import 'package:get/get.dart';
import 'package:tugas/components/tombolMelayang.dart';
import 'package:flutter/material.dart';
import 'package:tugas/screen/login.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17172B), // Background color
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.05,
              horizontal: MediaQuery.of(context).size.width * 0.025,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TombolMelayang(
                      warnaButton: Colors.white,
                      warnaIcon: Colors.black,
                      icon: Icons.arrow_back,
                      pageBuilder: () => LoginScreen(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Column(
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                    Text(
                      "Please sign up to your existing account",
                      style: TextStyle(
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                          fontSize: 18),
                    )
                  ],
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(24.0),
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),

              // width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFE6EEF1),
                      hintText: 'example@gmail.com',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 32.0), // Adjusted space for button alignment
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(LoginScreen()),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF742B),
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Send Code',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
