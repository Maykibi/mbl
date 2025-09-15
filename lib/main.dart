// Lab work 2
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 3: Layout Basics',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔹 AppBar
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Lab 3: Layout Basics",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),

      // 🔹 Фон приложения
      backgroundColor: Colors.grey[300],

      // 🔹 Тело с Column
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Первый контейнер
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: const Offset(2, 2),
                  blurRadius: 6,
                ),
              ],
            ),
            child: const Center(
              child: Text(
                "Welcome to Flutter!",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),

          const SizedBox(height: 16), // Отступ между контейнерами

          // Второй контейнер
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Left Text",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  "Right Text",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
