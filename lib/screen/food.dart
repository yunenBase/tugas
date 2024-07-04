import 'package:flutter/material.dart';
import 'package:tugas/screen/HomePage.dart';
import 'package:tugas/screen/searchPage.dart';

import '../components/tombolMelayang.dart';
import '../components/valueItem.dart';
import 'restaurantView.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  String? SelectedFood;

  final List<String> food = ["Burger", "Pizza", "Sandwich", "Steak"];

  final List<ListBurger> burgers = [
    ListBurger(
      deskripsiMakanan: "Rose Garden",
      gambarMakanan: 'assets/images/burger1.jpg',
      hargaMakanan: "Rp. 40",
      namaMakanan: "Burger Bistro",
    ),
    ListBurger(
      deskripsiMakanan: "Cheese Delight",
      gambarMakanan: 'assets/images/burger2.jpg',
      hargaMakanan: "Rp. 50",
      namaMakanan: "Cheese Burger",
    ),
    ListBurger(
      deskripsiMakanan: "Classic Beef",
      gambarMakanan: 'assets/images/burger3.jpg',
      hargaMakanan: "Rp. 45",
      namaMakanan: "Beef Burger",
    ),
    ListBurger(
      deskripsiMakanan: "Veggie Lover",
      gambarMakanan: 'assets/images/burger4.jpg',
      hargaMakanan: "Rp. 35",
      namaMakanan: "Veggie Burger",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * 0.05,
          horizontal: MediaQuery.of(context).size.width * 0.025,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TombolMelayang(
                  warnaButton: Colors.white,
                  warnaIcon: Colors.black,
                  icon: Icons.arrow_back,
                  pageBuilder: () => HomePage(),
                ),
                Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 219, 219, 219)),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text(
                        "Menu",
                        style: TextStyle(fontFamily: 'Sen'),
                      ),
                      value: SelectedFood,
                      icon: Icon(Icons.arrow_drop_down, color: Colors.orange),
                      items: food.map((String food) {
                        return DropdownMenuItem<String>(
                          value: food,
                          child: Text(
                            food,
                            style: TextStyle(fontFamily: 'Sen'),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          SelectedFood = newValue;
                        });
                      },
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  child: TombolMelayang(
                      icon: Icons.search,
                      pageBuilder: () => SearchPage(),
                      warnaIcon: Colors.white,
                      warnaButton: Colors.black),
                ),
                TombolMelayang(
                    warnaIcon: Colors.black,
                    warnaButton: Colors.white,
                    icon: Icons.settings_input_composite_outlined,
                    pageBuilder: () => Food())
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.025,
              ),
              margin: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Popular Burgers",
                style: TextStyle(fontFamily: 'Sen', fontSize: 22),
              ),
            ),
            GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.025,
              ),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 2 / 2.6),
              itemCount: burgers.length,
              itemBuilder: (BuildContext context, int index) {
                final burger = burgers[index];
                return ListBurger(
                  deskripsiMakanan: burger.deskripsiMakanan,
                  gambarMakanan: burger.gambarMakanan,
                  hargaMakanan: burger.hargaMakanan,
                  namaMakanan: burger.namaMakanan,
                );
              },
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.025,
              ),
              margin: EdgeInsets.symmetric(vertical: 25),
              child: Text(
                "Open Restaurants",
                style: TextStyle(
                  fontFamily: 'Sen',
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.025,
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'assets/images/restaurant_3.jpg',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Tasty Treat Gallery",
                          style: TextStyle(fontSize: 24.0, fontFamily: 'Sen'),
                        ),
                      ),
                      Row(
                        children: [
                          Value(
                            icon: Icons.star_border,
                            deskripsi: "4.7",
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Value(
                            icon: Icons.delivery_dining_outlined,
                            deskripsi: "Free",
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Value(
                            icon: Icons.timer_outlined,
                            deskripsi: "30 Min",
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RestaurantView()),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/restaurant_5.jpg',
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          "Spicy Restaurant",
                          style: TextStyle(fontSize: 24.0, fontFamily: 'Sen'),
                        ),
                      ),
                      Row(
                        children: [
                          Value(
                            icon: Icons.star_border,
                            deskripsi: "5.0",
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Value(
                            icon: Icons.delivery_dining_outlined,
                            deskripsi: "Free",
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Value(
                            icon: Icons.timer_outlined,
                            deskripsi: "20 Min",
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListBurger extends StatelessWidget {
  const ListBurger({
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
