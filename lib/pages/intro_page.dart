import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_sushi/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Spacer
            const SizedBox(height: 25),

            // Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('assets/images/dango.png'),
            ),
            const SizedBox(height: 25),

            // Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Shop name
                Text("SUSHI MAN",
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 24, color: Colors.white)),
                Text("THE TASTE OF JAPANESE FOOD",
                    style: GoogleFonts.dmSerifDisplay(
                        fontSize: 54, color: Colors.white, height: 1)),
                // Spacer
                const SizedBox(height: 15),
                Text(
                  "Feel that taste of the most popular Japanese food from anywhere and anytime",
                  style: TextStyle(color: Colors.grey[300]),
                ),
              ],
            ),
            // Spacer
            const SizedBox(height: 15),

            // Enter buttons
            MyButton(
              text: "Get Started",
              onTap: () {
                // Go to the menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
