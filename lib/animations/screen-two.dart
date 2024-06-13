import 'package:flutter/material.dart';

class ScreenAnimateTwo extends StatefulWidget {
  const ScreenAnimateTwo({super.key});

  @override
  State<ScreenAnimateTwo> createState() => _ScreenAnimateTwoState();
}

class _ScreenAnimateTwoState extends State<ScreenAnimateTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen Two'),),

      body: Hero(
          tag: 'screen',
          child: Icon(Icons.home,color: Colors.black,size: 50,)),
    );
  }
}
