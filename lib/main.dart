import 'package:flutter/material.dart';
import 'package:how_far_uni/presentation/screens/main_page.dart';
// import 'package:how_far_uni/presentation/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Poppins',
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
