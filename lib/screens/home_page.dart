import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar : titre + deux IconButtons (actions)
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Recherche',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {},
          ),
        ],
      ),

      // Drawer : menu latéral à 3 entrées
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF5B9BEA)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('Ma Garderie', style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            ListTile(leading: Icon(Icons.home), title: Text('Accueil')),
            ListTile(leading: Icon(Icons.restaurant_menu), title: Text('Menus')),
            ListTile(leading: Icon(Icons.info), title: Text('À propos')),
          ],
        ),
      ),

      // Corps : titre de section (la liste arrive à l'étape 8)
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Text(
          'Menus du jour',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Ajouter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
