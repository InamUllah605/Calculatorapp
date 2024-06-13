import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}
class _CalculatorAppState extends State<CalculatorApp> {
  double firstnum = 0;
  double secondnunm = 0;
  var input = "";
  var output = "";
  //var oprations = "";
  //var hideinput = false;
  onButtonClick(value){
    if (value == "AC") {
      input = "";
      output = "";
    }else if(value=="C"){
      output="";
    }
    else if(value=="<"){
      if(input.isNotEmpty){
        input = input.substring(0, input.length - 1);}
    }
    else if (value == "="){
      if(input.isNotEmpty){
        String userinput = input;
        userinput = input.replaceAll("x", "*");
        Parser p=Parser();
        Expression expression=p.parse(userinput);
        ContextModel cm =ContextModel();
        var finalValue =expression.evaluate(EvaluationType.REAL,cm);
        output=finalValue.toString();
        if(output.endsWith(".0")){
          output =output.substring(0,output.length-2);
        }
      }
      input!=output;
    }
    else {
      input=input+value;
    }
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Calculator', style: TextStyle(fontSize: 30,color: Colors.white),),
        ),
        backgroundColor: Colors.black,
        body:
        Column(children: [
          Expanded(
            child: Container(color: Colors.black,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(scrollDirection: Axis.vertical,
                  child: Column(mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(input,style: TextStyle(color:Colors.white,fontSize: 50,fontWeight: FontWeight.bold),),
                      Text(output,style: TextStyle(color:Colors.red,fontSize: 50,fontWeight: FontWeight.bold),),
                    ],),
                ),
              ),
            ),
          ),
          ///Buttons area;
          Padding(
            padding: const EdgeInsets.only(right: 10,bottom: 20),
            child: Column(children: [
              Row(children: [
                button(text: "AC", textColor: Colors.black),
                button(text: "/", textColor: Colors.black),
                button(text: "C", textColor: Colors.black),
                button(text: "<",
                    textColor: Colors.white,
                    buttonBgColor: Colors.amber),

              ],),
              Row(children: [
                button(text: "7",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "8",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "9",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "x",
                    textColor: Colors.white,
                    buttonBgColor: Colors.amber),

              ],),
              Row(children: [
                button(text: "4",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "5",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "6",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "-",
                    textColor: Colors.white,
                    buttonBgColor: Colors.amber),

              ],),
              Row(children: [
                button(text: "1",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "2",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "3",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "+", textColor: Colors.white, buttonBgColor: Colors.amber),

              ],),
              Row(children: [
                button(text: "%",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "0",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: ".",
                    textColor: Colors.white,
                    buttonBgColor: Colors.grey.shade800),
                button(text: "=", textColor: Colors.white, buttonBgColor: Colors.green),

              ],),
            ],),
          ),
        ],)
    );
  }

  Widget button({
    text, textColor = Colors.white, buttonBgColor = Colors.grey,}) {
     return
       Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10,bottom: 10,),
        child: InkWell(onTap: (){
          onButtonClick(text);
        },
          child: CircleAvatar(radius: 35,backgroundColor: buttonBgColor,
            child: Text(text,
        style: TextStyle(fontSize: 25, color: textColor, fontWeight: FontWeight.bold),
      ),
          ),
        ),
        // child: ElevatedButton(style: ElevatedButton.styleFrom(
        //   padding: EdgeInsets.all(18), primary: buttonBgColor,
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(50)),
        // ),
        //   onPressed: (){onButtonClick(text);},
        //   child: Text(text,
        //     style: TextStyle(fontSize: 25, color: textColor, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
    );
  }

}
