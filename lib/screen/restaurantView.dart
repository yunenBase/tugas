import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/packages/imageSlideshow.dart';
import 'package:tugas/screen/HomePage.dart';
import 'package:tugas/screen/myCartPage.dart';

import '../components/menuMakanan.dart';
import '../components/tombolMelayang.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ImageSlideshow(
                  children: [
                    Image.asset('assets/images/restaurant_1.jpg',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/restaurant_2.jpg',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/restaurant_3.jpg',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/restaurant_4.jpg',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/restaurant_5.jpg',
                        fit: BoxFit.cover),
                  ],
                  indicatorColor: Colors.white,
                  indicatorBackgroundColor: Colors.white,
                  indicatorBorderColor:
                      const Color.fromARGB(255, 255, 255, 255),
                  indicatorBorderWidth: 1.0,
                  indicatorBorderPadding: 4.0,
                  autoPlayInterval: 3000,
                  isLoop: true,
                  height: 350,
                  indicatorBottomPadding: 10,
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.width * 0.025,
                  child: TombolMelayang(
                    pageBuilder: () => HomePage(),
                    warnaButton: Colors.white,
                    warnaIcon: Colors.black,
                    icon: Icons.arrow_back,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.05,
                  right: MediaQuery.of(context).size.width * 0.025,
                  child: TombolMelayang(
                    warnaButton: Colors.white,
                    warnaIcon: Colors.black,
                    pageBuilder: () => RestaurantView(),
                    icon: Icons.menu,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.star_border,
                              color: Color.fromRGBO(255, 118, 34, 1),
                              size: 26,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "5.5",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.delivery_dining_outlined,
                              color: Color.fromRGBO(255, 118, 34, 1),
                              size: 26,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "Free",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.access_time,
                              color: Color.fromRGBO(255, 118, 34, 1),
                              size: 26,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "20 Min",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Spicy Restaurant",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Sen'),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Maecenas sed diam eget risus varius blandit sit amet non magna. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.",
                      style: TextStyle(
                        fontFamily: 'Sen',
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      children: [
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTombol: Color.fromRGBO(245, 141, 29, 1),
                          pilihanMenu: "Burger",
                          warnaTulisan: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(245, 141, 29, 1),
                          pilihanMenu: "Sandwich",
                          warnaTombol: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(245, 141, 29, 1),
                          pilihanMenu: "Pizza",
                          warnaTombol: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(245, 141, 29, 1),
                          pilihanMenu: "Bread",
                          warnaTombol: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(245, 141, 29, 1),
                          pilihanMenu: "Vegetables",
                          warnaTombol: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    child: Text(
                      "Burger (10)",
                      style: TextStyle(fontFamily: 'Sen', fontSize: 20),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ListMakanan(
                          gambarMakanan: 'assets/images/burger1.jpg',
                          namaMakanan: "Burger Ferguson",
                          deskripsiMakanan: "Spicy Restaurant",
                          hargaMakanan: "\$ 40",
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        ListMakanan(
                          gambarMakanan: 'assets/images/burger2.jpg',
                          namaMakanan: "Burger Polos",
                          deskripsiMakanan: "Lumayan Enak",
                          hargaMakanan: "\$ 30",
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        ListMakanan(
                          gambarMakanan: 'assets/images/burger4.jpg',
                          namaMakanan: "Burger Keju",
                          deskripsiMakanan: "Keju kejuan gitu",
                          hargaMakanan: "\$ 50",
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        ListMakanan(
                          gambarMakanan: 'assets/images/burger5.jpg',
                          namaMakanan: "Burger McD",
                          deskripsiMakanan: "Sok Elite",
                          hargaMakanan: "\$ 60",
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 180,
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                child: Image.asset(
                                  'assets/images/burger3.jpg',
                                  fit: BoxFit.cover,
                                  width: 140,
                                  height: 85,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 7),
                                child: Text(
                                  'Burger Biasa',
                                  style: TextStyle(
                                      fontFamily: 'Sen',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text(
                                'Enak',
                                style: TextStyle(
                                  fontFamily: 'Sen',
                                  color: Colors.grey,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$60',
                                      style: TextStyle(
                                          fontFamily: 'Sen',
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color.fromRGBO(245, 141, 29, 1),
                                      ),
                                      padding: EdgeInsets.all(9),
                                      child: InkWell(
                                        onTap: () => Get.to(MyCartPage()),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListMakanan extends StatelessWidget {
  const ListMakanan({
    required this.deskripsiMakanan,
    required this.gambarMakanan,
    required this.hargaMakanan,
    required this.namaMakanan,
    super.key,
  });

  final String gambarMakanan;
  final String namaMakanan;
  final String deskripsiMakanan;
  final String hargaMakanan;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            child: Image.asset(
              gambarMakanan,
              fit: BoxFit.cover,
              width: 140,
              height: 85,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 7),
            child: Text(
              namaMakanan,
              style: TextStyle(
                  fontFamily: 'Sen', fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            deskripsiMakanan,
            style: TextStyle(
              fontFamily: 'Sen',
              color: Colors.grey,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text(
                  hargaMakanan,
                  style: TextStyle(
                      fontFamily: 'Sen',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Color.fromRGBO(245, 141, 29, 1),
                  ),
                  padding: EdgeInsets.all(9),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
