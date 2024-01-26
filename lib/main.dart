import 'package:flutter/material.dart';
import 'page_1.dart';
import 'page_2.dart';
import 'page_3.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final List<Widget> _pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  int _selectedTab = 0;

  void _pilihTab(indeks) {
    setState(() {
      _selectedTab = indeks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Multitab 1',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tugas Proyek Mobile Programming",
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: const Color(0xFFFFFFFF),
        ),
        body: _pages[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.purple,
          currentIndex: _selectedTab,
          onTap: _pilihTab,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image),
              label: 'Indonesia',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Author',
            ),
          ],
        ),
      ),
    );
  }
}