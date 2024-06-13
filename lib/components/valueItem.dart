import 'package:flutter/material.dart';

class Value extends StatelessWidget {
  const Value({
    required this.icon,
    required this.deskripsi,
    super.key,
  });

  final IconData icon;
  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Icon(
            icon,
            color: Color.fromRGBO(255, 118, 34, 1),
            size: 26,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          deskripsi,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
