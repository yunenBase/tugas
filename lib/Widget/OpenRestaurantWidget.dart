import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/screen/restaurantView.dart';

class OpenRestaurantWidget extends StatelessWidget {
  @override
  build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            // Single Restaurant Box
            _buildRestaurantItem(
              context,
              "assets/images/openGardenR.jpg",
              "Spicy Restaurant",
              "Burger - Chicken - Rice - Wings",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantItem(
      BuildContext context, String imagePath, String title, String details) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () => Get.to(RestaurantView()),
        child: Container(
          width: 380,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  imagePath,
                  height: 150, // Adjust height as needed
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      details,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10), // Space between details and icons row
                    Row(
                      children: [
                        _buildIconTextRow(Icons.star, "4.7"),
                        SizedBox(width: 20), // Space between icon-text pairs
                        _buildIconTextRow(Icons.local_shipping, "Free"),
                        SizedBox(width: 20),
                        _buildIconTextRow(Icons.history, "20 min"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconTextRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: Colors.red,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class OpenRestaurantWidget2 extends StatelessWidget {
  @override
  build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            // Single Restaurant Box
            _buildRestaurantItem(
              context,
              "assets/images/kantin.jpg",
              "Business Center",
              "Nasi Dadar - Ayam Katsu - Pical Ayam",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRestaurantItem(
      BuildContext context, String imagePath, String title, String details) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 380,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                imagePath,
                height: 150, // Adjust height as needed
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    details,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10), // Space between details and icons row
                  Row(
                    children: [
                      _buildIconTextRow(Icons.star, "4.7"),
                      SizedBox(width: 20), // Space between icon-text pairs
                      _buildIconTextRow(Icons.local_shipping, "Free"),
                      SizedBox(width: 20),
                      _buildIconTextRow(Icons.history, "20 min"),
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

  Widget _buildIconTextRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: Colors.red,
        ),
        SizedBox(width: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
