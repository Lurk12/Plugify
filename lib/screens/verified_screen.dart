import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plugify/widgets/custom_screen_design.dart';
import 'package:plugify/widgets/login_button.dart';

class VerifiedScreen extends StatelessWidget{
  const VerifiedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScreenDesign(child: Column(
      children: [
        Image.asset('assets/images/Check.png'),
        const SizedBox(height: 30),
        Text('Phone number was verified ☎️', style: GoogleFonts.plusJakartaSans(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 10),
        Text('Your Phone Number was\n     successfully verified', style: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        ),
        const SizedBox(height: 70),
        LoginButton(text: 'Go Home', onPressed: (){
          
        }, color:const Color.fromRGBO(203, 237, 98, 1), textColor: Colors.black)
      ],
    ));
  }
}
