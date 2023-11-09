import 'dart:async';
import 'package:flutter/material.dart';
import 'package:species/other%20pages/notchbottombar.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);
  @override
  State<splashscreen> createState() => splashscreenState();
}

class splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => notchbottom(),
            )));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(height: 370, child: Image.asset("assets/images/sp.jpg")),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "ہوشیار بادشاہ سلامت تشریف لارہےہیں",
            style: TextStyle(
                fontSize: 38, color: Colors.teal, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.white,
            color: Colors.teal,
          ),
        ],
      ),
    );
  }
}
