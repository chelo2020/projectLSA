import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Saludos extends StatelessWidget {
  static const name = 'qsp';

  Saludos({Key? key}) : super(key: key);

  final List<Map<String, String>> videos = [
    {
      'url': 'https://www.youtube.com/watch?v=8igc7_Fxw7U',
      'texto': 'Saludos y Cordialidad',
    },
    // Agrega más videos y descripciones aquí
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = 2;

    // Determina el número de columnas en función del ancho de pantalla
    if (screenWidth > 600) {
      crossAxisCount = 3; // Por ejemplo, 3 columnas en pantallas anchas
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saludos y cordialidad en LSA'),
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
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount, // Columnas variables
              mainAxisSpacing: 8.0, // Espacio vertical entre los elementos
              crossAxisSpacing: 8.0, // Espacio horizontal entre los elementos
            ),
            itemCount: videos.length,
            itemBuilder: (context, index) {
              final videoUrl = videos[index]['url'];
              final videoTexto = videos[index]['texto'];

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 4.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      YoutubePlayer(
                        controller: YoutubePlayerController(
                          initialVideoId:
                              YoutubePlayer.convertUrlToId(videoUrl ?? '') ??
                                  '',
                          flags: const YoutubePlayerFlags(
                            autoPlay: false,
                            mute: false,
                          ),
                        ),
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.blueAccent,
                      ),
                      const SizedBox(
                          height: 8.0), // Espacio entre el video y el botón
                      ElevatedButton(
                        onPressed: () {
                          // Iniciar la reproducción del video al presionar el botón
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VideoPlayerScreen(
                                videoUrl: videoUrl ?? '',
                                videoTexto: videoTexto ?? '',
                              ),
                            ),
                          );
                        },
                        child: const Text('Reproducir'),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class VideoPlayerScreen extends StatelessWidget {
  final String videoUrl;
  final String videoTexto;

  const VideoPlayerScreen({
    Key? key,
    required this.videoUrl,
    required this.videoTexto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(videoTexto),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: YoutubePlayer.convertUrlToId(videoUrl) ?? '',
            flags: const YoutubePlayerFlags(
              autoPlay: true, // Iniciar la reproducción automáticamente
              mute: false,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Saludos(),
  ));
}
