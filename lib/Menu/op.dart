import 'package:flutter/material.dart';

class ObjetivosPage extends StatelessWidget {
  static const name = 'qsp';

  const ObjetivosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objetivos de la APP'),
      ),
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
          // Agregar un ListView para mejor distribución del texto
          Center(
            child: Container(
              padding:
                  const EdgeInsets.all(16.0), // Espaciado del recuadro de texto
              color: Colors.black
                  .withOpacity(0.5), // Color y opacidad del recuadro
              child: ListView(
                children: const <Widget>[
                  Text(
                    'Los objetivos de una aplicación para Lengua de Señas (LSA) pueden variar según la naturaleza y el propósito de la aplicación. Sin embargo, aquí te presento algunos objetivos comunes que podrían aplicarse a este tipo de aplicaciones:',
                    style: TextStyle(
                      color: Colors.white, // Color del texto
                      fontSize: 18.0, // Tamaño del texto
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text(
                      'Facilitar la Comunicación: El objetivo principal de muchas aplicaciones de LSA es ayudar a las personas sordas o con discapacidad auditiva a comunicarse de manera efectiva en su lengua de señas. Esto puede incluir la traducción de texto o voz a LSA y viceversa.',
                      style: TextStyle(
                        color: Colors.white, // Color del texto
                        fontSize: 18.0, // Tamaño del texto
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text(
                      'Aprender LSA: Si la aplicación está destinada a usuarios que desean aprender LSA, los objetivos podrían incluir la enseñanza de vocabulario, gramática y cultura de LSA de manera efectiva y accesible.',
                      style: TextStyle(
                        color: Colors.white, // Color del texto
                        fontSize: 18.0, // Tamaño del texto
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text(
                      'Accesibilidad: Garantizar que la aplicación sea accesible para usuarios sordos o con discapacidad auditiva, lo que puede incluir la incorporación de gestos y señas para la navegación y la interacción con la aplicación.',
                      style: TextStyle(
                        color: Colors.white, // Color del texto
                        fontSize: 18.0, // Tamaño del texto
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text(
                      'Inclusividad: Asegurarse de que la aplicación sea útil para usuarios con diferentes niveles de habilidad en LSA, desde principiantes hasta usuarios avanzados.',
                      style: TextStyle(
                        color: Colors.white, // Color del texto
                        fontSize: 18.0, // Tamaño del texto
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.check),
                    title: Text(
                      'Interacción en Comunidad: Fomentar la interacción entre usuarios para practicar y mejorar sus habilidades en LSA',
                      style: TextStyle(
                        color: Colors.white, // Color del texto
                        fontSize: 18.0, // Tamaño del texto
                      ),
                    ),
                  ),
                  // Agrega más objetivos utilizando ListTiles
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
