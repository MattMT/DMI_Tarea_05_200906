import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

String textButton = "Hi bro";
int index = 0;
List<String> collections = [
  "Batimano",
  "Azulo",
  "Amarelo"
];

class _MyButtonState extends State<MyButton> {
  int currentIndex = 0;
  List<String> imagePaths = [
    "img/a.png",
    "img/b.png",
    "img/c.png",
  ];

  void onPressedButton() {
    setState(() {
      currentIndex = (currentIndex + 1) %
          imagePaths.length;
    });
    textButton = collections[index];
    index = index < collections.length - 1
        ? index + 1
        : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarea 05 - 200906"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        color: Colors.black45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(50.0),
              padding: EdgeInsets.all(20.0),
            ),
            SizedBox(height: 30.0),
            Image.asset(
              imagePaths[currentIndex],
              fit: BoxFit.cover,
              width: 200.0,
              height: 270.0,
            ),
            Text(
              textButton,
              style: TextStyle(fontSize: 35.0, color: Colors.white),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple
              ),
              onPressed:
              onPressedButton,
              child: Text("Kill them"),
            ),
          ],
        ),
      ),
    );
  }
}