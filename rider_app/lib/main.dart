//main code
import 'package:flutter/material.dart';
import 'package:rider_app/screens/Bottom_nav_dock/final_view.dart';

Future<void> main() async => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const FinalView(),
    );
  }
}


// import 'package:rider_app/screens/home_screen.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ChaCha Cabs',
//       home: HomeScreen(),
//     );
//   }
// }

