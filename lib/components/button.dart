import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(212, 135, 81, 77),
            borderRadius: BorderRadius.circular(40)),
        padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: Colors.white),
            ),

            // space
            const SizedBox(
              width: 15,
            ),
            // Icons
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
