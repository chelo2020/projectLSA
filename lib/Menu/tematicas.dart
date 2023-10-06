import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tematicas/abecedario.dart';
import 'package:flutter_application_1/Tematicas/familia.dart';
import 'package:flutter_application_1/Tematicas/marcas.dart';
import 'package:flutter_application_1/Tematicas/saludos.dart';

class Tematicas extends StatelessWidget {
  static const name = 'qsp';

  const Tematicas(
      {Key? key, required String errorMessage, required List visitorList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageButtons = [
      _buildImageWithButton(
        context,
        'assets/saludos.png',
        'Saludos',
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Saludos(),
            ),
          );
        },
      ),
      _buildImageWithButton(
        context,
        'assets/familia.jpg',
        'Familia',
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Familia(),
            ),
          );
        },
      ),
      _buildImageWithButton(
        context,
        'assets/marcas.jpg',
        'Marcas',
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Marcas(),
            ),
          );
        },
      ),
      _buildImageWithButton(
        context,
        'assets/abecedario.jpg',
        'Abecedario',
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Abecedario(),
            ),
          );
        },
      ),
      _buildImageWithButton(
        context,
        'assets/abecedario.jpg',
        'Abecedario',
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Abecedario(),
            ),
          );
        },
      ),
      _buildImageWithButton(
        context,
        'assets/salir.jpg',
        'Salir',
        () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Salir'),
              content: const Text('¿Estás seguro de que deseas salir?'),
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
      // Agrega más botones aquí
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 20.0), // Ajusta el valor según tu preferencia
        child: Center(
          child: SizedBox(
            height: double.infinity,
            child: Stack(
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
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Dos columnas
                    ),
                    itemCount: imageButtons.length,
                    itemBuilder: (context, index) {
                      return imageButtons[index];
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithButton(
    BuildContext context,
    String imagePath,
    String imageName,
    VoidCallback onPressed,
  ) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.width * 0.2,
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: onPressed,
          child: Text(imageName),
        ),
      ],
    );
  }
}
