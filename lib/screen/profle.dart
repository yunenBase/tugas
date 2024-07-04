import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/screen/order.dart';
import 'package:tugas/screen/personal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            // Handle back button press
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 198, 174, 1),
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vishal Khadok',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'I love fast food',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.4,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 248, 250, 1),
                      borderRadius: BorderRadius.circular(
                          20.0), // Atur radius sesuai kebutuhan
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/personal3.png', // Ganti dengan path gambar yang sesuai
                                width: 30, // Atur lebar gambar
                                height: 30, // Atur tinggi gambar
                                fit: BoxFit
                                    .contain, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Personal Info",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  icon: Icon(Icons.keyboard_arrow_right),
                                  iconSize: 24.0,
                                  onPressed: () => Get.to(PersonalPage())),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/alamat.png', // Ganti dengan path gambar yang sesuai
                                width: 30, // Atur lebar gambar
                                height: 30, // Atur tinggi gambar
                                fit: BoxFit
                                    .contain, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Addresses",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  icon: Icon(Icons.keyboard_arrow_right),
                                  iconSize: 24.0,
                                  onPressed: () {}),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.55,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 248, 250, 1),
                      borderRadius: BorderRadius.circular(
                          20.0), // Atur radius sesuai kebutuhan
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () => Get.to(OrderPage()),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/cart2.png', // Ganti dengan path gambar yang sesuai
                                  width: 30, // Atur lebar gambar
                                  height: 30,
                                  fit: BoxFit
                                      .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  "Orders",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                Spacer(),
                                const Icon(
                                  Icons.keyboard_arrow_right,
                                  size: 24.0,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/fav.png', // Ganti dengan path gambar yang sesuai
                                width: 30, // Atur lebar gambar
                                height: 30,
                                fit: BoxFit
                                    .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Favourite",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/notif.png',
                                width: 30, // Atur lebar gambar
                                height:
                                    30, // Ganti dengan path gambar yang sesuai
                                fit: BoxFit
                                    .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Notifications",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/pay.png',
                                width: 30, // Atur lebar gambar
                                height:
                                    30, // Ganti dengan path gambar yang sesuai
                                fit: BoxFit
                                    .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Payment Method",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.43,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 248, 250, 1),
                      borderRadius: BorderRadius.circular(
                          20.0), // Atur radius sesuai kebutuhan
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/faq.png',
                                width: 30, // Atur lebar gambar
                                height:
                                    30, // Ganti dengan path gambar yang sesuai
                                fit: BoxFit
                                    .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "FAQs",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/user.png',
                                width: 30, // Atur lebar gambar
                                height:
                                    30, // Ganti dengan path gambar yang sesuai
                                fit: BoxFit
                                    .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "User Reviews",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/setting.png',
                                width: 30, // Atur lebar gambar
                                height:
                                    30, // Ganti dengan path gambar yang sesuai
                                fit: BoxFit
                                    .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Settings",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.18,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 248, 250, 1),
                      borderRadius: BorderRadius.circular(
                          20.0), // Atur radius sesuai kebutuhan
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/logout.png',
                                width: 30, // Atur lebar gambar
                                height:
                                    30, // Ganti dengan path gambar yang sesuai
                                fit: BoxFit
                                    .cover, // Atur cara gambar ditampilkan (sesuaikan dengan kebutuhan Anda)
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              Text(
                                "Log Out",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Spacer(),
                              const Icon(
                                Icons.keyboard_arrow_right,
                                size: 24.0,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
