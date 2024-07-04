import 'package:flutter/material.dart';
import 'package:tugas/components/tombolMelayang.dart';
import 'package:tugas/screen/HomePage.dart';
import 'package:tugas/screen/restaurantView.dart';
import 'package:get/get.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      backgroundColor: const Color(0xFF17172B),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.025,
        ),
        child: Column(
          children: [
            Row(
              children: [
                TombolMelayang(
                  warnaButton: Colors.white,
                  warnaIcon: Colors.black,
                  icon: Icons.arrow_back,
                  pageBuilder: () => RestaurantView(),
                ),
                Text(
                  "Cart",
                  style: TextStyle(
                    fontFamily: 'Sen',
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ), // Menambahkan padding untuk menyesuaikan keyboard
                          child: Container(
                            padding: const EdgeInsets.all(24.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize
                                    .min, // Agar bottom sheet sesuai dengan konten
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "DELIVERY ADDRESS",
                                        style: TextStyle(
                                          fontFamily: 'Sen',
                                          color: Colors.grey,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "EDIT",
                                        style: TextStyle(
                                          fontFamily: 'Sen',
                                          color: Colors.orange,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xFFE6EEF1),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 30.0),
                                  Row(
                                    children: [
                                      Text(
                                        "Total:",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(width: 7.0),
                                      Text(
                                        "\$96",
                                        style: TextStyle(
                                          fontSize: 30,
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              "Breakdown",
                                              style: TextStyle(
                                                fontFamily: 'Sen',
                                                color: Colors.orange,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Icon(
                                              Icons.navigate_next,
                                              color: Colors.grey[700],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30.0),
                                  Container(
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
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
                          ),
                        );
                      },
                    );
                  },
                  child: Text(
                    "Done",
                    style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Sen',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.025),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/burger3.jpg',
                          width: 150,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Spicy Burger",
                                  style: TextStyle(
                                    fontFamily: 'Sen',
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.close,
                                    size: 17,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "\$64",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '14"',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Spacer(),
                                Row(
                                  children: [
                                    IconButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        c.kurang();
                                      },
                                      icon: Icon(Icons.remove),
                                    ),
                                    Obx(
                                      () => Text(
                                        "${c.count}",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      color: Colors.white,
                                      onPressed: () {
                                        c.tambah();
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Controller extends GetxController {
  var count = 1.obs;
  tambah() => count++;
  kurang() => count--;
}

// showModalBottomSheet(
//               context: context,
//               isScrollControlled: true, // Menambahkan properti ini
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
//               ),
//               builder: (BuildContext context) {
//                 return Padding(
//                   padding: EdgeInsets.only(
//                     bottom: MediaQuery.of(context).viewInsets.bottom,
//                   ), // Menambahkan padding untuk menyesuaikan keyboard
//                   child: Container(
//                     padding: const EdgeInsets.all(24.0),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(30),
//                         topRight: Radius.circular(30),
//                       ),
//                     ),
//                     child: SingleChildScrollView(
//                       child: Column(
//                         mainAxisSize: MainAxisSize
//                             .min, // Agar bottom sheet sesuai dengan konten
//                         children: [
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "DELIVERY ADDRESS",
//                                 style: TextStyle(
//                                   fontFamily: 'Sen',
//                                   color: Colors.grey,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               Text(
//                                 "EDIT",
//                                 style: TextStyle(
//                                   fontFamily: 'Sen',
//                                   color: Colors.orange,
//                                   fontSize: 16,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 20.0),
//                           TextField(
//                             decoration: InputDecoration(
//                               filled: true,
//                               fillColor: Color(0xFFE6EEF1),
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(8.0)),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 30.0),
//                           Row(
//                             children: [
//                               Text(
//                                 "Total:",
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                               const SizedBox(width: 7.0),
//                               Text(
//                                 "\$96",
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                 ),
//                               ),
//                               Spacer(),
//                               InkWell(
//                                 onTap: () {},
//                                 child: Row(
//                                   children: [
//                                     Text(
//                                       "Breakdown",
//                                       style: TextStyle(
//                                         fontFamily: 'Sen',
//                                         color: Colors.orange,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                     Icon(
//                                       Icons.navigate_next,
//                                       color: Colors.grey[700],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const SizedBox(height: 30.0),
//                           Container(
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
//                   ),
//                 );
//               },
//             );