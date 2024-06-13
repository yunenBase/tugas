import 'package:flutter/material.dart';

class MenuMakanan extends StatelessWidget {
  const MenuMakanan({
    required this.warnaTombol,
    required this.warnaTulisan,
    required this.warnaBorder,
    required this.pilihanMenu,
    super.key,
  });

  final Color warnaTombol;
  final Color warnaTulisan;
  final Color warnaBorder;
  final String pilihanMenu;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: warnaTombol,
        side: BorderSide(
          color: warnaBorder,
        ),
      ),
      onPressed: () {},
      child: Text(
        pilihanMenu,
        style: TextStyle(
          color: warnaTulisan,
        ),
      ),
    );
  }
}
