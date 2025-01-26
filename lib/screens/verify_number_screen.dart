import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plugify/screens/verified_screen.dart';
import 'package:plugify/widgets/custom_screen_design.dart';
import 'package:plugify/widgets/login_button.dart';

class VerifyNumberScreen extends StatefulWidget {
  const VerifyNumberScreen({super.key});

  @override
  State<VerifyNumberScreen> createState() {
    return _VerifyEmailScreeenState();
  }
}

class _VerifyEmailScreeenState extends State<VerifyNumberScreen> {
   late Timer timer; // Timer instance
  int remainingTime = 10; // Countdown time in seconds

  void startCountdown() {
    timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      if (remainingTime > 0) {
        setState(() {
          remainingTime--;
        });
      } else {
        timer.cancel(); // Stop the timer when it reaches 0
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScreenDesign(
      text: 'Verify your phone number ☎️ ',
      text2: 'Please input the code sent to your phone number',
      child: Column(
        children: [
          OtpTextField(
            numberOfFields: 4,
            keyboardType: TextInputType.number,
            showFieldAsBox: true,
            margin: const EdgeInsets.all(10),
            fieldHeight: 70,
            fieldWidth: 80,
            borderRadius: BorderRadius.circular(12),
            borderColor: Colors.black,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'OTP code expires in $remainingTime minuutes',
                style: GoogleFonts.plusJakartaSans(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          const SizedBox(height: 200,),
          LoginButton(text: 'Continue', onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const VerifiedScreen()));
          }, color:const Color.fromRGBO(203, 237, 98, 1), textColor: Colors.black)
        ],
      ),
    );
  }
}
