import 'package:tugas/components/tombolMelayang.dart';
import 'package:flutter/material.dart';
import 'package:tugas/screen/HomePage.dart';
import 'package:tugas/screen/restaurantView.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Signup Page',
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//         fontFamily: 'Poppins',
//       ),
//       home: const SignupPage(),
//     );
//   }
// }

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF17172B),
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
                      pageBuilder: () => RestaurantView(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Column(
                  children: [
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          fontFamily: 'Sen',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 30),
                    ),
                    Text(
                      "Please sign up to get started",
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
              height: MediaQuery.of(context).size.height * 0.7,
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
                    'NAME',
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
                      hintText: 'Dinda Mestika',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'EMAIL',
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
                  const SizedBox(height: 16.0),
                  const Text(
                    'PASSWORD',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFE6EEF1),
                      hintText: '••••••••',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    'RE-TYPE PASSWORD',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFE6EEF1),
                      hintText: '••••••••',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      ),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(
                      height: 32.0), // Adjusted space for button alignment
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF742B),
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'SIGN UP',
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


// Center(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TombolMelayang(
//                 warnaButton: Colors.white,
//                 warnaIcon: Colors.black,
//                 icon: Icons.arrow_back,
//                 pageBuilder: () => RestaurantView(),
//               ),
//               const SizedBox(height: 55.0),
//               Center(
//                 child: Column(
//                   children: [
//                     const Text(
//                       'Sign Up',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 36.0,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 8.0),
//                     const Text(
//                       'Please sign up to get started',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                       ),
//                     ),
//                     const SizedBox(height: 70.0),
//                     Container(
//                       width: double.infinity, // Expand to full width
//                       // height: double.infinity, // Expand to full width
//                       // constraints: BoxConstraints(
//                       //   minHeight: MediaQuery.of(context).size.height *
//                       //       0.6, // At least 60% of the screen height
//                       // ),
//                       padding: const EdgeInsets.all(24.0),
//                       decoration: BoxDecoration(
//                         color:
//                             const Color(0xFFF5F6FA), // Light background color
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(16.0),
//                           topRight: Radius.circular(16.0),
//                         ),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           const Text(
//                             'NAME',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w200,
//                             ),
//                           ),
//                           const SizedBox(height: 8.0),
//                           const TextField(
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Color(0xFFE6EEF1),
//                               hintText: 'Dinda Mestika',
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8.0)),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 16.0),
//                           const Text(
//                             'EMAIL',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w200,
//                             ),
//                           ),
//                           const SizedBox(height: 8.0),
//                           const TextField(
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Color(0xFFE6EEF1),
//                               hintText: 'example@gmail.com',
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8.0)),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 16.0),
//                           const Text(
//                             'PASSWORD',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w200,
//                             ),
//                           ),
//                           const SizedBox(height: 8.0),
//                           const TextField(
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Color(0xFFE6EEF1),
//                               hintText: '••••••••',
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8.0)),
//                               ),
//                               suffixIcon: Icon(Icons.visibility_off),
//                             ),
//                           ),
//                           const SizedBox(height: 16.0),
//                           const Text(
//                             'RE-TYPE PASSWORD',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w200,
//                             ),
//                           ),
//                           const SizedBox(height: 8.0),
//                           const TextField(
//                             obscureText: true,
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Color(0xFFE6EEF1),
//                               hintText: '••••••••',
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8.0)),
//                               ),
//                               suffixIcon: Icon(Icons.visibility_off),
//                             ),
//                           ),
//                           const SizedBox(
//                               height:
//                                   32.0), // Adjusted space for button alignment
//                           SizedBox(
//                             width: double.infinity,
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                     builder: (context) {
//                                       return HomePage();
//                                     },
//                                   ),
//                                 );
//                               },
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color(0xFFFF742B),
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 16.0),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(8.0),
//                                 ),
//                               ),
//                               child: const Text(
//                                 'SIGN UP',
//                                 style: TextStyle(
//                                   fontSize: 16.0,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),