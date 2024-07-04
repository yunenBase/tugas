import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/screen/order.dart';

class PaymentSuccessfulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.025,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  // color: Color(0xFF98A8B8),
                  borderRadius: BorderRadius.circular(
                      30), // Menjadikan sudut container menjadi circular
                ),
                child: Image.asset(
                  'assets/images/success.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                'Congratulations!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                'You successfully made a payment,\nenjoy our service!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 32.0),
              ElevatedButton(
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
                onPressed: () => Get.to(OrderPage()),
                child: const Text("Track Order"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
