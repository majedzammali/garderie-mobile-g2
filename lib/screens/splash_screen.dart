import 'dart:async';

import 'package:flutter/material.dart';

import 'home_page.dart';

// StatefulWidget : on a besoin de initState/dispose pour le minuteur.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Après 3 secondes, on remplace le splash par la page principale.
    _timer = Timer(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomePage()),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFAF0),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/garderie.png', width: 300),
            const SizedBox(height: 24),
            const Text(
              'Ma Garderie',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF5B9BEA),
              ),
            ),
            const SizedBox(height: 8),
            const Text('Bienvenue dans notre garderie', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
