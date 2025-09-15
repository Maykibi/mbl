//Lab work 2
// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Lab 3: Layout Basics',
// //       theme: ThemeData(
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
// //       ),
// //       home: const MyHomePage(),
// //     );
// //   }
// // }

// // class MyHomePage extends StatelessWidget {
// //   const MyHomePage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // 🔹 AppBar
// //       appBar: AppBar(
// //         backgroundColor: Colors.teal,
// //         title: const Text(
// //           "Lab 3: Layout Basics",
// //           style: TextStyle(
// //             color: Colors.white,
// //             fontWeight: FontWeight.bold,
// //             fontSize: 20,
// //           ),
// //         ),
// //       ),

// //       // 🔹 Фон приложения
// //       backgroundColor: Colors.grey[300],

// //       // 🔹 Тело с Column
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           // Первый контейнер
// //           Container(
// //             padding: const EdgeInsets.all(16),
// //             margin: const EdgeInsets.symmetric(horizontal: 20),
// //             decoration: BoxDecoration(
// //               color: Colors.blue,
// //               borderRadius: BorderRadius.circular(12),
// //               boxShadow: [
// //                 BoxShadow(
// //                   color: Colors.black.withOpacity(0.2),
// //                   offset: const Offset(2, 2),
// //                   blurRadius: 6,
// //                 ),
// //               ],
// //             ),
// //             child: const Center(
// //               child: Text(
// //                 "Welcome to Flutter!",
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                 ),
// //                 textAlign: TextAlign.center,
// //               ),
// //             ),
// //           ),

// //           const SizedBox(height: 16), // Отступ между контейнерами

// //           // Второй контейнер
// //           Container(
// //             padding:
// //                 const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
// //             margin: const EdgeInsets.symmetric(horizontal: 20),
// //             decoration: BoxDecoration(
// //               color: Colors.green,
// //               borderRadius: BorderRadius.circular(8),
// //               border: Border.all(color: Colors.white, width: 2),
// //             ),
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: const [
// //                 Text(
// //                   "Left Text",
// //                   style: TextStyle(color: Colors.white, fontSize: 16),
// //                 ),
// //                 Text(
// //                   "Right Text",
// //                   style: TextStyle(color: Colors.white, fontSize: 16),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //Lab work 3
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'BoxFit + Stack Demo',
//       theme: ThemeData(useMaterial3: false),
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool _useFirstImage = true;

//   String get _bg =>
//       _useFirstImage ? 'assets/images/image_1.jpeg' : 'assets/images/image_2.jpeg';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Lab 3: Layout Basics",
//           style: TextStyle(
//             color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20,
//           ),
//         ),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.grey[300],

//       // 9. Фон через Stack + полупрозрачный слой + заголовок
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           // фон-картинка
//           Image.asset(_bg, fit: BoxFit.cover),

//           // полупрозрачный оверлей
//           Container(color: Colors.black.withOpacity(0.35)),

//           // заголовок сверху
//           Align(
//             alignment: Alignment.topCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(top: 24),
//               child: const Text(
//                 "Welcome to Flutter",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 28,
//                   fontWeight: FontWeight.w700,
//                   shadows: [Shadow(blurRadius: 4, offset: Offset(0, 1), color: Colors.black54)],
//                 ),
//               ),
//             ),
//           ),

//           // Содержимое страницы (твой демо-контейнер + кнопки)
//           Align(
//             alignment: Alignment.center,
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   // ----- ТВОЙ ДЕМО-КОНТЕЙНЕР BoxFit -----
//                   Container(
//                     color: Colors.grey[300],
//                     width: 300,
//                     height: 200,
//                     child: Image.asset(
//                       "assets/images/image_1.jpeg",
//                       // fit: BoxFit.fill,      // ← меняй это значение
//                       // fit: BoxFit.contain,   // ← меняй это значение
//                       // fit: BoxFit.cover,     // ← меняй это значение
//                       // fit: BoxFit.fitWidth,  // ← меняй это значение
//                       // fit: BoxFit.fitHeight, // ← меняй это значение
//                       // fit: BoxFit.none,      // ← меняй это значение
//                       fit: BoxFit.scaleDown,    // ← сейчас используется это
//                     ),
//                   ),
//                   const SizedBox(height: 24),

//                   // ----- КНОПКИ -----
//                   // 10. ElevatedButton — SnackBar
//                   SizedBox(
//                     width: 200,
//                     height: 50,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue,
//                         foregroundColor: Colors.white,
//                         textStyle: const TextStyle(fontSize: 16),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                       ),
//                       onPressed: () {
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(content: Text('Hello from SnackBar!')),
//                         );
//                       },
//                       child: const Text('Show SnackBar'),
//                     ),
//                   ),
//                   const SizedBox(height: 12),

//                   // 11. TextButton — переход на второй экран
//                   SizedBox(
//                     width: 200,
//                     height: 50,
//                     child: TextButton(
//                       style: TextButton.styleFrom(
//                         backgroundColor: Colors.transparent,
//                         foregroundColor: Colors.green,
//                         textStyle: const TextStyle(fontSize: 16),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                       ),
//                       onPressed: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(builder: (_) => const SecondScreen()),
//                         );
//                       },
//                       child: const Text('Go to Second Screen'),
//                     ),
//                   ),
//                   const SizedBox(height: 12),

//                   // 12. OutlinedButton — переключение фоновой картинки
//                   SizedBox(
//                     width: 200,
//                     height: 50,
//                     child: OutlinedButton(
//                       style: OutlinedButton.styleFrom(
//                         side: const BorderSide(color: Colors.black, width: 1.5),
//                         foregroundColor: Colors.black,
//                         backgroundColor: Colors.transparent,
//                         textStyle: const TextStyle(fontSize: 16),
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//                       ),
//                       onPressed: () {
//                         setState(() => _useFirstImage = !_useFirstImage);
//                       },
//                       child: const Text('Toggle Image'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Второй экран для TextButton
// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Second Screen',
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
//         ),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: const Center(
//         child: Text(
//           'You are on the second screen',
//           style: TextStyle(fontSize: 18),
//         ),
//       ),
//     );
//   }
// }

// Lab work 1
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
