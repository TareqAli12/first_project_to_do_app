import 'package:first_project_to_do_app/views/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'daily_progress_screen.dart';
import 'main_screen.dart';

class Main extends StatefulWidget {
  const Main({super.key});
  

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  PageController pageController = PageController();
int currentIndex = 0;
  void iconValue(){
    currentIndex=2;
    setState(() {
    });
  }

  void dailyProgress(){
    currentIndex=1;
    setState(() {
    });
  }
  
  void dailyProgressScreen(){
    currentIndex=0;
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: PageView(
          controller: pageController,
          children: [MainScreen(pageController, iconValue, dailyProgress), DailyProgress(pageController, iconValue, dailyProgressScreen), const ProfileScreen()]),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey.shade800,
          currentIndex: currentIndex,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
            pageController.animateToPage(index,
                duration: const Duration(microseconds: 100), curve: Curves.linear);
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.add,), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.task,), label: ''),
          ], 
        ),
    );
  }
}