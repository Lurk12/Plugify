import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomScreenDesign extends StatelessWidget {
  final Widget child;
  final String? text;
  final String? text2;
  const CustomScreenDesign(
      {super.key,
      required this.child,
       this.text,
       this.text2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 42, 20, 1),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 60),
                Image.asset(
                  'assets/images/Group 29.png',
                  width: 70,
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/Group.png',
                  width: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.64,
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 40),
                          child: Text(text??'',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 24, fontWeight: FontWeight.w700)),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(text2??'',
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          )),
                      const SizedBox(height: 20),
                      child,
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
