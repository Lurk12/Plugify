import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plugify/widgets/login_button.dart';
import 'package:plugify/widgets/login_custom_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 42, 20, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(children: [
              const SizedBox(height: 60),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset('assets/images/Group 29.png')),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/Group.png'),
              ),
              const SizedBox(height: 60),
              // ignore: sized_box_for_whitespace
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
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
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(55),
                    topRight: Radius.circular(55),
                  ),
                ),
                width: double.infinity,
                height: 491,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 30,
                        ),
                        child: Text(
                          'Wagwan 👋',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30,
                          top: 3,
                        ),
                        child: Text('Sign in with your email and password ✨',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color:
                                    const Color.fromARGB(255, 103, 101, 101))),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            thickness: 2,
                            indent: 30,
                            endIndent:
                                10, // Adjusted to make space for the text
                          ),
                        ),
                        Text(
                          'OR',
                          style: GoogleFonts.plusJakartaSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 103, 101, 101),
                          ),
                        ),
                        const Expanded(
                          child: Divider(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            thickness: 2,
                            indent: 10, // Adjusted to make space for the text
                            endIndent: 30,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: LoginCustomButton(
                              text: 'Google',
                              onPressed: () {},
                              image: Image.asset('assets/images/Google.png'),
                              color: const Color.fromRGBO(203, 237, 98, 1),
                              textColor: Colors.black),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: LoginCustomButton(
                              text: 'Apple',
                              onPressed: () {},
                              image: Image.asset('assets/images/Apple.png'),
                              color: const Color.fromRGBO(203, 237, 98, 1),
                              textColor: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(height: 11),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text('Email',
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          prefixIcon: const Icon(Icons.email_outlined),
                          labelText: 'Enter your email address',
                          labelStyle: GoogleFonts.plusJakartaSans(
                            fontSize: 13,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 28),
                        child: Text('Password',
                            style: GoogleFonts.plusJakartaSans(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Enter your password',
                          prefixIcon: const Icon(Icons.lock_outline),
                          labelStyle: GoogleFonts.plusJakartaSans(
                              color: Colors.black, fontSize: 13),
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    LoginButton(
                        text: 'Log in',
                        onPressed: () {},
                        color: const Color.fromRGBO(203, 237, 98, 1),
                        textColor: Colors.black),
                    const SizedBox(height: 1),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('Don’t have an account?',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                      TextButton(
                        onPressed: () {},
                        child: Text('Sign up',
                            style: GoogleFonts.plusJakartaSans(
                                color: const Color.fromRGBO(0, 0, 0, 0.5),
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      )
                    ]),
                  ],
                ),
              ),
            ]),
             Positioned(
                top: 60,
                right: 20,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close, color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
