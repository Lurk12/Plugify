import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plugify/screens/login_screen.dart';
import 'package:plugify/screens/splash_screen.dart';
import 'package:plugify/screens/verify_email_screeen.dart';
import 'package:plugify/widgets/custom_text_sign_up.dart';
import 'package:plugify/widgets/login_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 42, 20, 1),
      body: SingleChildScrollView(
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 45),
                Image.asset(
                  'assets/images/Group 29.png',
                  width: 50,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/Group.png',
                  width: 150,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.74,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                      topRight: Radius.circular(55),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(28, 91, 51, 0.859),
                        spreadRadius: -10,
                        blurRadius: 9,
                        offset: Offset(0, -40),
                      ),
                      BoxShadow(
                        color: Color.fromRGBO(120, 248, 181, 1),
                        spreadRadius: -5,
                        blurRadius: 9,
                        offset: Offset(2, -15),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 25),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Create a new account👋',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 24, fontWeight: FontWeight.w700)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20,
                        ),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Sign up with your details ✨',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6))),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Name',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomTextField(
                        labelText: 'Enter your full name',
                        prefixIcon: Icon(Icons.person_outline_outlined),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            'Email',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const CustomTextField(
                        labelText: 'Enter your email address',
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Password',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const CustomTextField(
                        labelText: 'Enter your password',
                        prefixIcon: Icon(Icons.lock_outline),
                        obscureText: true,
                        suffixIcon: Icons.visibility_off_outlined,
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Confirm Password',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const CustomTextField(
                        labelText: 'Confirm your password',
                        prefixIcon: Icon(Icons.lock_outline),
                        obscureText: true,
                        suffixIcon: Icons.visibility_off_outlined,
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text('Phone Number',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 15, fontWeight: FontWeight.w500)),
                        ),
                      ),
                      const SizedBox(height: 5),
                      CustomTextField(
                        labelText: 'Enter your number',
                        prefixIcon: Image.asset(
                          'assets/images/Naija.png',
                          width: 30,
                        ),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 15),
                      LoginButton(
                          text: 'Sign up',
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const VerifyEmailScreeen()));
                          },
                          color: const Color.fromRGBO(203, 237, 98, 1),
                          textColor: Colors.black),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(0, 0, 0, 0.6))),
                          const SizedBox(width: 5),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                            },
                            child: Text('Login',
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
                top: 60,
                right: 30,
                child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SplashScreen(),
                          ),
                        ),
                    child: const Icon(Icons.close, color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
