import 'package:flutter/material.dart';

import '../widget/account.dart';
import '../widget/home.dart';
import '../widget/post.dart';
import '../widget/movies_page.dart';



class HomePage  extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex =  0;

  static const List<Widget> _pages = [
    UserHome(),
    UserPost(),
    MoviesPage(),
    UserAccount(),
  ];

  void _navigateBottomNavbar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 52, 5, 5),
      body: _pages[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:  Colors.transparent,
        currentIndex: _selectIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _navigateBottomNavbar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined), label: 'Post'),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video_sharp), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
      ),
    );
  }
}
