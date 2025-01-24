import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final String hintText;
  final double borderRadius;
  final Color labelColor;
  final double labelFontSize;
  final IconData? suffixIcon;
  final Color borderColor;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.controller,
    this.hintText = '',
    this.borderRadius = 15.0,
    this.labelColor = Colors.black,
    this.labelFontSize = 14.0,
    this.suffixIcon,
    this.borderColor = const Color.fromARGB(255, 0, 0, 0),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelText: labelText,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: Icon(suffixIcon),
          labelStyle: GoogleFonts.plusJakartaSans(
            color: labelColor,
            fontSize: labelFontSize,
          ),
           enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor, // Default color for inactive border
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          
          ),
        ),
      ),
    );
  }
}
