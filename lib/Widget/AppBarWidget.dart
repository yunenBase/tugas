import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 15,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Icon(Icons.menu),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DELIVER TO',
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                    fontSize: 12, // Adjust font size as needed
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Dinda Lab office',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                        fontSize: 14, // Adjust font size as needed
                      ),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 16, // Mini icon size
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Icon(Icons.notifications),
          ),
        ),
      ]),
    );
  }
}
