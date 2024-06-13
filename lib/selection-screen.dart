import 'package:calculator/views/android/andoid-home-screen.dart';
import 'package:calculator/views/web/web-home-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({super.key});

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: AndroidHomeScreen(),desktop: WebHomeScreen(),);
  }
}
