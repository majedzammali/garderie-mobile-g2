import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

// Point d'entrée : Flutter appelle main() au démarrage.
void main() {
  runApp(const MaGarderieApp());
}

class MaGarderieApp extends StatelessWidget {
  const MaGarderieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma Garderie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: const Color(0xFF5B9BEA), useMaterial3: true),
      home: const SplashScreen(), // premier écran affiché
    );
  }
}
