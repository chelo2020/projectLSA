import 'package:flutter/material.dart';
import 'package:flutter_application_1/Menu/menu.dart';

void main() {
  runApp(VisitorApp());
}

class Visitor {
  final String name;
  final DateTime entryDate;

  Visitor(this.name, this.entryDate);
}

class VisitorApp extends StatelessWidget {
  static const name = 'main';
  final List<Visitor> visitorList = [];

  VisitorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto IULSA',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fondo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'IULSA',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainMenu(
                            visitorList: [],
                            errorMessage: 'Mal ubicado',
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Ingresar',
                      style: TextStyle(color: Color.fromARGB(255, 226, 59, 59)),
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
