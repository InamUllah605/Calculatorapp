import 'package:calculator/animations/screen-two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenAnimateOne extends StatefulWidget {
  const ScreenAnimateOne({super.key});

  @override
  State<ScreenAnimateOne> createState() => _ScreenAnimateOneState();
}

class _ScreenAnimateOneState extends State<ScreenAnimateOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen One'),),
      body: Center(child: InkWell(
          onTap: (){
            Get.to(()=>ScreenAnimateTwo(),duration: Duration(seconds: 10));
          },
          child: Hero(
              tag: 'screen',
              child: Icon(Icons.home,color: Colors.purple,size: 50,))),),
    );
  }
}
