// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/screen/HomePage.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Order'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () => Get.to(HomePage())),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Ongoing",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color.fromRGBO(255, 118, 34, 1),
                          ),
                        ),
                        Text(
                          "History",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Food",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Divider(),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/pizza.jpg',
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Pizza Hut",
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 130.0,
                                            ),
                                            Text(
                                              "#162432 ",
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color.fromRGBO(
                                                      107, 110, 130, 1),
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rp.35.25 | ',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            Text(
                                              '03 Items ',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color.fromRGBO(
                                                      107, 110, 130, 1)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Track Order",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 118, 34, 1),
                                    borderRadius: BorderRadius.circular(
                                        10), // nilai 25 dapat disesuaikan sesuai kebutuhan
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color.fromRGBO(255, 118, 34, 1),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color.fromRGBO(
                                          255, 118, 34, 1), // warna orange
                                      width:
                                          2, // lebar border, sesuaikan dengan kebutuhan
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Drink",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Divider(),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/burger4.jpg',
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "McDonald",
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 130.0,
                                            ),
                                            Text(
                                              "#242432 ",
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color.fromRGBO(
                                                      107, 110, 130, 1),
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rp.35.25 | ',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            Text(
                                              '02 Items ',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color.fromRGBO(
                                                      107, 110, 130, 1)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Track Order",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 118, 34, 1),
                                    borderRadius: BorderRadius.circular(
                                        10), // nilai 25 dapat disesuaikan sesuai kebutuhan
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color.fromRGBO(255, 118, 34, 1),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color.fromRGBO(
                                          255, 118, 34, 1), // warna orange
                                      width:
                                          2, // lebar border, sesuaikan dengan kebutuhan
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Drink",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Divider(),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/starbucks.jpg',
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Starbucks",
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 130.0,
                                            ),
                                            Text(
                                              "#240112 ",
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color.fromRGBO(
                                                      107, 110, 130, 1),
                                                  decoration:
                                                      TextDecoration.underline),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Rp.35.25 | ',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            Text(
                                              '03 Items ',
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Color.fromRGBO(
                                                      107, 110, 130, 1)),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Track Order",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 118, 34, 1),
                                    borderRadius: BorderRadius.circular(
                                        10), // nilai 25 dapat disesuaikan sesuai kebutuhan
                                  ),
                                ),
                                Container(
                                  child: Center(
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Color.fromRGBO(255, 118, 34, 1),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Color.fromRGBO(
                                          255, 118, 34, 1), // warna orange
                                      width:
                                          2, // lebar border, sesuaikan dengan kebutuhan
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
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
