import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyTicketButton extends StatelessWidget {
  const BuyTicketButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Allows the button to take full width
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: const Color.fromRGBO(0, 42, 20, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Buy Ticket',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
