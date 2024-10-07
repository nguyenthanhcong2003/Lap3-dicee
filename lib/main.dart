import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Color(0xFF0D28EF),
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<DicePage> {
  var number1 = 1;
  var number2 = 4;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Color(0xFF0FD928),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              height: 100,
//            color: Colors.green,
              child: Center(child: Text("DICEE APP",
                style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),)),
            ),
            Container(
                width: double.infinity,
                height: 200,
//            color: Colors.green,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Container(
                          width: 150,
                          height: 150,
//                    color: Colors.blue,
                          child: Image.asset("images/dice${number1}.png")
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                          width: 150,
                          height: 150,
//                    color: Colors.blue,
                          child: Image.asset("images/dice${number2}.png")
                      ),
                    ),
                  ],
                )
            ),
            Container(
              width: double.infinity,
              height: 100,
//            color: Colors.green,
              child: Center(child: Text("Lets Roll",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),)),
            ),
          ],
        ),
      ),
      onTap: () async {



        for(var i = 0; i < 5; i++){
          print(i);
          setState(() {
            var randomNumber1 = Random().nextInt(6) + 1;
            var randomNumber2 = Random().nextInt(6) + 1;

            number1 = randomNumber1;
            number2 = randomNumber2;
          });
          await Future.delayed(Duration(milliseconds: 300));

        }

      },
    );
  }
}