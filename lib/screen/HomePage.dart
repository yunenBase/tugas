import 'package:tugas/Widget/CategoriesWidget.dart';
import 'package:tugas/Widget/OpenRestaurantWidget.dart';
import 'package:flutter/material.dart';
import 'package:tugas/Widget/AppBarWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBarWidget(),

          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Hey Dinda, ",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black, // Needed to ensure text is visible
                      fontWeight: FontWeight.normal, // Normal weight
                    ),
                  ),
                  TextSpan(
                    text: "Good Morning!",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black, // Needed to ensure text is visible
                      fontWeight: FontWeight.bold, // Bold weight
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 1),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search dishes, restaurant",
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Category
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    //see all action
                  },
                  child: Row(
                    children: [
                      Text(
                        "see all",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Category Widget
          CategoriesWidget(),

          //Open Restaurant
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Open Restaurants",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: () {
                    //see all action
                  },
                  child: Row(
                    children: [
                      Text(
                        "see all",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Open Restaurant Widget
          OpenRestaurantWidget(),
          OpenRestaurantWidget2(),
        ],
      ),
    );
  }
}
