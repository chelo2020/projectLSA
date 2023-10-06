import 'package:flutter/material.dart';
import 'package:flutter_application_1/Menu/op.dart';
import 'package:flutter_application_1/Menu/qsp.dart';
import 'package:flutter_application_1/Menu/tematicas.dart';

class MainMenu extends StatelessWidget {
  static const name = 'menu';

  const MainMenu({
    Key? key,
    required String errorMessage,
    required List visitorList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
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
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.1,
              vertical: screenHeight * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButtonColumn(
                      context,
                      'assets/temáticas.png',
                      'Tematicas',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Tematicas(
                              errorMessage: '',
                              visitorList: [],
                            ),
                          ),
                        );
                      },
                    ),
                    _buildButtonColumn(
                      context,
                      'assets/quienes.jpg',
                      'Quienes Somos',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuienesSomosPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildButtonColumn(
                      context,
                      'assets/objetivos.jpg',
                      'Objetivos de la App',
                      () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ObjetivosPage(),
                          ),
                        );
                      },
                    ),
                    _buildButtonColumn(
                      context,
                      'assets/salir.jpg',
                      'Salir',
                      () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Salir'),
                            content: const Text(
                                '¿Estás seguro de que deseas salir?'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancelar'),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Salir'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonColumn(
    BuildContext context,
    String imagePath,
    String buttonText,
    VoidCallback onPressed,
  ) {
    return Expanded(
      child: Column(
        children: [
          Image.asset(imagePath,
              height: 100), // Ajusta el tamaño de la imagen aquí
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
