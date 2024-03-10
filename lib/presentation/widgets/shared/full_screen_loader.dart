import 'package:flutter/material.dart';

class FullScreenLoader extends StatelessWidget {
  const FullScreenLoader({super.key});

  Stream<String> getLoadingMessages() {
    final messages = <String>[
      'Cargando peliculas...',
      'Comprando palomitas de maiz...',
      'Cargando populares...',
      'Ya mero...',
      'Esto esta tardando mas de lo esperado :(',
    ];
    return Stream<String>.periodic(
        const Duration(milliseconds: 1200),
         (index) => messages[index]
    ).take(messages.length);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Espere por favor...'),
          const SizedBox(height: 10),
          const CircularProgressIndicator(
            strokeWidth: 2,
          ),
          const SizedBox(height: 10),
          StreamBuilder<String>(
            stream: getLoadingMessages(),
            builder: (context, snapshot) {
              return Text(snapshot.data ?? '');
            },
          ),
        ],
      ),
    );
  }
}