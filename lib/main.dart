//Lab work 4
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoxFit + Stack Demo',
      theme: ThemeData(useMaterial3: false),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _useFirstImage = true;

  String get _bg =>
      _useFirstImage ? 'assets/images/image_1.jpeg' : 'assets/images/image_2.jpeg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lab 3: Layout Basics",
          style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,
          ),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[300],

      // 9. Фон через Stack + полупрозрачный слой + заголовок
      body: Stack(
        fit: StackFit.expand,
        children: [
          // фон-картинка
          Image.asset(_bg, fit: BoxFit.cover),

          // полупрозрачный оверлей
          Container(color: Colors.black.withOpacity(0.35)),

          // заголовок сверху
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 24),
              child: const Text(
                "Welcome to Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  shadows: [Shadow(blurRadius: 4, offset: Offset(0, 1), color: Colors.black54)],
                ),
              ),
            ),
          ),

          // Содержимое страницы (твой демо-контейнер + кнопки)
          Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ----- ТВОЙ ДЕМО-КОНТЕЙНЕР BoxFit -----
                  Container(
                    color: Colors.grey[300],
                    width: 300,
                    height: 200,
                    child: Image.asset(
                      "assets/images/image_1.jpeg",
                      // fit: BoxFit.fill,      // ← меняй это значение
                      // fit: BoxFit.contain,   // ← меняй это значение
                      // fit: BoxFit.cover,     // ← меняй это значение
                      // fit: BoxFit.fitWidth,  // ← меняй это значение
                      // fit: BoxFit.fitHeight, // ← меняй это значение
                      // fit: BoxFit.none,      // ← меняй это значение
                      fit: BoxFit.scaleDown,    // ← сейчас используется это
                    ),
                  ),
                  const SizedBox(height: 24),

                  // ----- КНОПКИ -----
                  // 10. ElevatedButton — SnackBar
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Hello from SnackBar!')),
                        );
                      },
                      child: const Text('Show SnackBar'),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // 11. TextButton — переход на второй экран
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.green,
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => const SecondScreen()),
                        );
                      },
                      child: const Text('Go to Second Screen'),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // 12. OutlinedButton — переключение фоновой картинки
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.black, width: 1.5),
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.transparent,
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {
                        setState(() => _useFirstImage = !_useFirstImage);
                      },
                      child: const Text('Toggle Image'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Второй экран для TextButton
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Screen',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'You are on the second screen',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
