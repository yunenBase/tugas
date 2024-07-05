import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tugas/Constant/Theme.dart';
import 'package:tugas/screen/HomePage.dart';
import 'package:tugas/screen/forgot.dart';
import 'package:tugas/screen/signup.dart';
import 'package:tugas/Constant/validation.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;
  bool _obscureText = true; // Menyimpan status teks tersembunyi atau tidak
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17172B),
      resizeToAvoidBottomInset: true, // Tambahkan ini
      body: SingleChildScrollView(
        // Tambahkan ini
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50),
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Log In',
                    style: TextStyle(
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 0),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Please sign in to your existing account',
                      style: body1.copyWith(color: buttonTextColor),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "EMAIL",
                    style: body1,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    validator: (val) => Validators.ValidEmail(val!),
                    decoration: InputDecoration(
                      hintText: 'example@gmail.com',
                      hintStyle: hintText,
                      filled: true,
                      fillColor: Color(0xFFF0F5FA),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "PASSWORD",
                    style: body1,
                  ),
                  TextFormField(
                    validator: (val) => Validators.ValidPass(val!),
                    controller: _passwordController,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: '..........',
                      filled: true,
                      fillColor: Color(0xFFF0F5FA),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (bool? value) {
                              setState(() {
                                _rememberMe = value!;
                              });
                            },
                          ),
                          Text('Remember me'),
                        ],
                      ),
                      TextButton(
                        onPressed: () => Get.to(ForgotPage()),
                        child: Text(
                          'Forgot Password',
                          style: body2.copyWith(color: textButtonColor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Get.to(HomePage()),
                        child: Text('LOG IN'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFF7622),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupPage(),
                            ),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: Text(
                          "or",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 16, 115, 197),
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Handle Facebook login
                          },
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Handle Facebook login
                          },
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(50)),
                        child: IconButton(
                          icon: FaIcon(
                            FontAwesomeIcons.apple,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Handle Facebook login
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
