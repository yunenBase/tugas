import 'package:flutter/material.dart';

class TombolMelayang extends StatelessWidget {
  const TombolMelayang({
    required this.icon,
    required this.pageBuilder,
    required this.warnaIcon,
    required this.warnaButton,
    super.key,
  });

  final IconData icon;
  final Color warnaIcon;
  final Color warnaButton;
  final Widget Function() pageBuilder;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageBuilder()),
        );
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: CircleBorder(),
        backgroundColor: warnaButton,
      ),
      child: Icon(
        icon,
        size: 17,
        color: warnaIcon,
      ),
    );
  }
}
