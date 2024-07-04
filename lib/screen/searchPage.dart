import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas/components/menuMakanan.dart';
import 'package:tugas/components/searchBar.dart';
import 'package:tugas/components/tombolMelayang.dart';
import 'package:tugas/screen/food.dart';
import 'package:tugas/screen/restaurantView.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.025,
        ),
        child: Column(
          children: [
            Row(
              children: [
                TombolMelayang(
                  warnaButton: Colors.white,
                  warnaIcon: Colors.black,
                  icon: Icons.arrow_back,
                  pageBuilder: () => Food(),
                ),
                Text(
                  "Search",
                  style: TextStyle(fontFamily: 'Sen', fontSize: 20),
                ),
                Spacer(),
                TombolMelayang(
                    warnaIcon: Colors.white,
                    warnaButton: Colors.black,
                    icon: Icons.shopping_bag_outlined,
                    pageBuilder: () => SearchPage())
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.025),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BarSearch(),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Recent Keyword",
                      style: TextStyle(fontFamily: 'Sen', fontSize: 22),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(22, 22, 22, 1),
                          pilihanMenu: "Burger",
                          warnaTombol: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(22, 22, 22, 1),
                          pilihanMenu: "Sandwich",
                          warnaTombol: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(22, 22, 22, 1),
                          pilihanMenu: "Pizza",
                          warnaTombol: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(22, 22, 22, 1),
                          pilihanMenu: "Bread",
                          warnaTombol: Colors.white,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        MenuMakanan(
                          warnaBorder: Color.fromARGB(255, 229, 229, 229),
                          warnaTulisan: Color.fromRGBO(22, 22, 22, 1),
                          pilihanMenu: "Dessert",
                          warnaTombol: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      "Suggested Restaurants",
                      style: TextStyle(fontSize: 24, fontFamily: 'Sen'),
                    ),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () => Get.to(RestaurantView()),
                        child: SuggestedRestaurant(
                          img: 'assets/images/burger2.jpg',
                          namaResto: "Spicy Restaurant",
                          rating: "4.7",
                        ),
                      ),
                      Divider(
                        color: Colors.grey, // Warna garis
                        thickness: 0.3, // Ketebalan garis
                      ),
                      SuggestedRestaurant(
                        img: 'assets/images/burger1.jpg',
                        namaResto: "American Spicy Burger Shop",
                        rating: "4.7",
                      ),
                      Divider(
                        color: Colors.grey, // Warna garis
                        thickness: 0.3, // Ketebalan garis
                      ),
                      SuggestedRestaurant(
                        img: 'assets/images/burger4.jpg',
                        namaResto: "Pansi Restaurant",
                        rating: "4.7",
                      ),
                      Divider(
                        color: Colors.grey, // Warna garis
                        thickness: 0.3, // Ketebalan garis
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      "Popular Fast Foods",
                      style: TextStyle(fontSize: 24, fontFamily: 'Sen'),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ListMakananSearch(
                            deskripsiMakanan: "Uttara Coffe House",
                            gambarMakanan: 'assets/images/burger3.jpg',
                            namaMakanan: "European Pizza"),
                        ListMakananSearch(
                            deskripsiMakanan: "Uttara Coffe House",
                            gambarMakanan: 'assets/images/burger5.jpg',
                            namaMakanan: "European Pizza"),
                        ListMakananSearch(
                            deskripsiMakanan: "Uttara Coffe House",
                            gambarMakanan: 'assets/images/burger4.jpg',
                            namaMakanan: "European Pizza"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListMakananSearch extends StatelessWidget {
  const ListMakananSearch({
    required this.deskripsiMakanan,
    required this.gambarMakanan,
    required this.namaMakanan,
    super.key,
  });

  final String gambarMakanan;
  final String namaMakanan;
  final String deskripsiMakanan;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 30),
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
        ],
      ),
    );
  }
}

class SuggestedRestaurant extends StatelessWidget {
  const SuggestedRestaurant({
    required this.img,
    required this.namaResto,
    required this.rating,
    super.key,
  });

  final String img;
  final String namaResto;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              img,
              width: 80,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  namaResto,
                  style: TextStyle(
                    fontFamily: 'Sen',
                    fontSize: 17,
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.orange,
                    ),
                    Text(
                      rating,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
