import 'package:fitness_tracking/app/controllerBinding.dart';
import 'package:fitness_tracking/bottomNavBar/main_bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MainBottomNavScreen(),
      initialBinding: ControllerBinder(),

    );
  }
}