import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:how_far_uni/presentation/screen/home_page.dart';
import 'package:how_far_uni/presentation/screen/live_map_page.dart';
import 'package:how_far_uni/presentation/screen/select_university.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF004B89),
        selectedLabelStyle: GoogleFonts.poppins(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(fontSize: 13),
      ),
      body: pages[currentIndex],
    );
  }
}

final pages = const [HomePage(), LiveMapPage(), SelectUniversity()];
