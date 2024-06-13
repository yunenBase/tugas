import 'package:flutter/material.dart';

class Tugas extends StatelessWidget {
  const Tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Item(
              deskripsi: "Ikhwanul Hakim",
            ),
            Item(
              deskripsi: "Inderapura, 7 Juli 2003",
            ),
            Item(
              deskripsi: "2111512016",
            ),
            Item(
              deskripsi: "Lanang",
            ),
            Item(
              deskripsi: "Semester 6",
            ),
            Item(
              deskripsi: "Departemen Teknik Komputer",
            ),
            Item(
              deskripsi: "Fakultas Teknologi Informasi",
            ),
            Item(
              deskripsi: "Universitas Andalas",
            ),
            Item(
              deskripsi: "Lubuk Begalung, Kota Padang",
            ),
            Item(
              deskripsi: "SMP 1 Airpura",
            ),
            Item(
              deskripsi: "SMA 2 Painan",
            ),
            Item(
              deskripsi: "Hobi : Seni dan Musik",
            ),
            Item(deskripsi: "Skill : Basic Programming")
          ],
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    required this.deskripsi,
    super.key,
  });

  final String deskripsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.amber,
      ),
      child: Text(
        deskripsi,
        style: TextStyle(fontFamily: 'Sen', fontSize: 20),
      ),
    );
  }
}
