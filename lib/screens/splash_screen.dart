import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plugify/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 42, 20, 1),
      body: Column(
        children: [
          const SizedBox(height: 230),
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/Group 29.png'),
          ),
          const SizedBox(height: 95),
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/Group.png'),
          ),
          const SizedBox(
            height: 182,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(55),
                topRight: Radius.circular(55),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(18, 93, 54, 1),
                  spreadRadius: 15,
                  blurRadius: 8,
                  offset: Offset(0, -5),
                ),
              ],
            ),
            child:  Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 42,20,1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
