import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/components/tombolMelayang.dart';
import 'package:tugas/screen/myCartPage.dart';
import 'package:tugas/screen/payment_successful_page.dart';

class PaymentMethodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.025,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TombolMelayang(
                  warnaButton: Colors.white,
                  warnaIcon: Colors.black,
                  icon: Icons.arrow_back,
                  pageBuilder: () => MyCartPage(),
                ),
                Text(
                  "Payment",
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F5FA),
                          ),
                          child: Image.asset(
                            'assets/images/cash.png', // Ganti dengan path gambar Anda
                            // Atur bagaimana gambar menyesuaikan container
                          ),
                        ),
                        Text(
                          "Cash",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F5FA),
                          ),
                          child: Image.asset(
                            'assets/images/visa.png', // Ganti dengan path gambar Anda
                            // Atur bagaimana gambar menyesuaikan container
                          ),
                        ),
                        Text(
                          "Visa",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F5FA),
                          ),
                          child: Image.asset(
                            'assets/images/mastercard.png', // Ganti dengan path gambar Anda
                          ),
                        ),
                        Text(
                          "Master Card",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xFFF0F5FA),
                          ),
                          child: Image.asset(
                            'assets/images/paypal.png', // Ganti dengan path gambar Anda
                          ),
                        ),
                        Text(
                          "Paypal",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFF4F5F7),
              ),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Master Card",
                          style: TextStyle(
                              fontFamily: 'Sen',
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/mastercarddua.png",
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "*****************436",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total:",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "\$96",
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromRGBO(255, 118, 34, 1), // Warna latar belakang
                  foregroundColor: Colors.white, // Warna teks
                  minimumSize:
                      Size(380, 50), // Ukuran minimum tombol (lebar, tinggi)

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10), // Membuat tombol dengan sudut melengkung
                  ),
                ),
                onPressed: () => Get.to(PaymentSuccessfulPage()),
                child: const Text("Pay & Confirm"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
