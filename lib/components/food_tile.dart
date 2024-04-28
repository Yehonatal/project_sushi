import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import "../models/food.dart";

class FoodTile extends StatelessWidget {
  final Food food;
  final double picker;
  const FoodTile({super.key, required this.food, required this.picker});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          // Image
          Image.asset(
            food.imagePath,
            height: picker,
          ),
          // text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                food.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
              SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$' + food.price,
                      style: GoogleFonts.dmSerifDisplay(fontSize: 15),
                    ),
                    // Price
                    Row(
                      children: [
                        // Rating
                        Text("⭐"),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          food.rating,
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          // price and rating
        ],
      ),
    );
  }
}
