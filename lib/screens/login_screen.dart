import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 42, 20, 1),
      body: Column(
        children: [
          const SizedBox(height: 80),
          Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/Group 29.png')),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: Image.asset('assets/images/Group.png'),
          ),
          const SizedBox(height: 90),
          // ignore: sized_box_for_whitespace
          Container(
           decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [ 
              BoxShadow(
                color: Color.fromRGBO(120, 248, 181, 1),
                spreadRadius: -9,
                blurRadius: 9,
                offset: Offset(0, -15),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(55),
              topRight: Radius.circular(55),
            ),
            
           ),
            width: double.infinity,
            height: 455,
          )
        ],
      ),
    );
  }
}

