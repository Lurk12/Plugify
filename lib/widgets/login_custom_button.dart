import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginCustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final Image image;

  const LoginCustomButton({super.key, 
    required this.text,
    required this.onPressed,
    required this.color,
    required this.textColor,
     required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: 170,
        height: 55,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            image,
            const SizedBox(width: 10),
            Text(
              text,
              style: GoogleFonts.plusJakartaSans(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ]
        ),
      ),
    );
  }
}