


import 'package:fitness_tracking/bottomNavBar/activity/activity.dart';
import 'package:fitness_tracking/bottomNavBar/home/home.dart';
import 'package:fitness_tracking/bottomNavBar/main_bottomnav_Controller.dart';
import 'package:fitness_tracking/bottomNavBar/profile/profile.dart';
import 'package:fitness_tracking/bottomNavBar/statistics/statistic.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {



  final List<Widget> _screen = [
     const Homescreen(),
     const Activity(),
     const Statistics(),
     const Profile(),


  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
        builder: (controller) {
          return Scaffold(
            body: _screen[controller.currentSelectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: controller.currentSelectedIndex,
              onTap: controller.changeScreen,
              selectedItemColor: Colors.orangeAccent,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              elevation: 4,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.list),label: 'Activity'),
                BottomNavigationBarItem(icon: Icon(Icons.scale),label: 'Statistics'),
                BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: 'Profile'),
              ],),
          );
        }
    );
  }
}