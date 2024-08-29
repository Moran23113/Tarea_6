import 'package:flutter/material.dart';
import 'package:tarea_consumoapis/Cocteles/coctel_1.dart';
import 'package:tarea_consumoapis/Cocteles/coctel_2.dart';
import 'package:tarea_consumoapis/Cocteles/coctel_3.dart';
import 'package:tarea_consumoapis/Cocteles/coctel_4.dart';
import 'package:tarea_consumoapis/Cocteles/coctel_5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        textTheme: const TextTheme(
          labelLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black54,
          centerTitle: true,
          title: const Text(
            'Deliciosos Cocteles!',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: buildMainMenu(),
      ),
    );
  }

  Widget buildMainMenu() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF0D0D0D), Color(0xFF333333)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            CoctelButton(
              label: 'Blue Margarita',
              page: Coctel_1(),
            ),
            CoctelButton(
              label: 'Old Fashioned',
              page: Coctel_2(),
            ),
            CoctelButton(
              label: 'Bramble',
              page: Coctel_3(),
            ),
            CoctelButton(
              label: 'Popped Cherry',
              page: Coctel_4(),
            ),
            CoctelButton(
              label: 'Gin Lemon',
              page: Coctel_5(),
            ),
          ],
        ),
      ),
    );
  }
}

class CoctelButton extends StatelessWidget {
  final String label;
  final Widget page;

  const CoctelButton({required this.label, required this.page, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.redAccent, padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
        },
        child: SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
