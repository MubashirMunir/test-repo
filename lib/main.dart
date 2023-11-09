import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.teal,
        ),
        appBarTheme: const AppBarTheme(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.teal),
            backgroundColor: Colors.teal),
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
      ),
      title: "nftApp",
      home: const splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
