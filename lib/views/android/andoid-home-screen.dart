import 'package:flutter/material.dart';

class AndroidHomeScreen extends StatefulWidget {
  const AndroidHomeScreen({super.key});

  @override
  State<AndroidHomeScreen> createState() => _AndroidHomeScreenState();
}

class _AndroidHomeScreenState extends State<AndroidHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Android Screen'),),
    );
  }
}
