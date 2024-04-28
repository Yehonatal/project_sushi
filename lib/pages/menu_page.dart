import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sushi/components/button.dart';
import 'package:project_sushi/models/food.dart';
import 'package:project_sushi/theme/colors.dart';

import '../components/food_tile.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // Food menu
  List foodMenu = [
    Food(
        name: "Rice Bowl",
        price: "7.50",
        imagePath: 'assets/images/rice-bowl.png',
        rating: "4.0"),
    Food(
        name: "Kobe Beef",
        price: "15.50",
        imagePath: 'assets/images/kobe-beef.png',
        rating: "4.1"),
    Food(
        name: "Sushi",
        price: "12.50",
        imagePath: 'assets/images/sushi.png',
        rating: "4.5"),
    Food(
        name: "Uramaki",
        price: "11.50",
        imagePath: 'assets/images/uramaki.png',
        rating: "4.1"),
    Food(
        name: "Sushi Roll",
        price: "18.50",
        imagePath: 'assets/images/sushi-roll.png',
        rating: "4.8"),
    Food(
        name: "Tuna",
        price: "8.50",
        imagePath: 'assets/images/tuna.png',
        rating: "4.3"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(210, 255, 245, 244),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Promo banner
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(25)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  // Promo msg
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Get 32% Promo",
                          style: GoogleFonts.dmSerifDisplay(
                              fontSize: 24, color: Colors.white)),
                      // Redeem button
                      const SizedBox(
                        height: 20,
                      ),

                      MyButton(text: "Redeem", onTap: () {})
                    ],
                  ),

                  Image.asset(
                    'assets/images/shrimp.png',
                    height: 75,
                  ),
                  // Image
                  Image.asset(
                    'assets/images/uramaki.png',
                    height: 105,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Search here ..."),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          // menu list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text("Food Menu",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 18, color: Colors.grey[800])),
          ),
          const SizedBox(
            height: 10,
          ),

          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                food: foodMenu[index],
                picker: 160,
              ),
            ),
          )),
          const SizedBox(
            height: 25,
          ),

          const SizedBox(
            height: 25,
          ),

          // Popular food section
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(25)),
            margin: EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/images/dango.png',
                      height: 100,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        // Right
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dango Dumpling",
                              style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$21.00',
                                      style: TextStyle(color: Colors.grey[600]),
                                    ),
                                    Row(
                                      children: [
                                        // Rating
                                        Text("⭐"),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "5",
                                          style: TextStyle(
                                              color: Colors.grey[600]),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                // Left
                const Row(
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
