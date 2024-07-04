import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/screen/food.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Row(
          children: [
            // Single Item
            _buildCategoryItem(
              context,
              "assets/images/pizza1.jpg",
              "Pizza",
              "Starting",
              "\$70",
            ),
            _buildCategoryItem(
              context,
              "assets/images/burger1.jpg",
              "Burger",
              "Starting",
              "\$50",
            ),
            _buildCategoryItem(
              context,
              "assets/images/pizza.jpg",
              "Pizza",
              "Starting",
              "\$80",
            ),
            _buildCategoryItem(
              context,
              "assets/images/Spaghetti.jpg",
              "Spaghetti",
              "Starting",
              "\$100",
            ),
            _buildCategoryItem(
              context,
              "assets/images/steak.jpg",
              "Steak",
              "Starting",
              "\$60",
            ),
            _buildCategoryItem(
              context,
              "assets/images/chicken.jpg",
              "Fried Chicken",
              "Starting",
              "\$60",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(BuildContext context, String imagePath,
      String title, String price, String quantity) {
    return InkWell(
      onTap: () => Get.to(Food()),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          quantity,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.black,
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
      ),
    );
  }
}
