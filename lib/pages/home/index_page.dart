import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/home/main_page.dart';
import 'package:flutter_cubit/pages/home/my_page.dart';
import 'package:flutter_cubit/pages/home/search_page.dart';
import 'package:flutter_cubit/pages/home/stats_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const MainPage(),
    const StatsPage(),
    const SearchPage(),
    const MyPage()
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.6),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.apps,
              )),
          BottomNavigationBarItem(label: "Stats", icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "My", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
