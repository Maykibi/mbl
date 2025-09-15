import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Мое первое приложение"),
        ),
        body: Column(
          children: [
            Text(
              "Что вкусно — то вкусно",
              style: TextStyle(fontSize: 24),
            ),
            Container(
              color: Colors.blue,
              height: 100,
              width: 200,
              child: Center(
                child: Text(
                  "Я люблю вкусно покушать",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
