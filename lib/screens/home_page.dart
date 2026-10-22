import 'package:flutter/material.dart';

import '../data/menus.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      // Titre de section + liste (Expanded = la liste prend la place restante)
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              'Menus du jour',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              itemCount: menus.length,
              itemBuilder: (context, index) {
                final menu = menus[index];
                return Card(
                  child: ListTile(
                    leading: Text(menu.icone, style: const TextStyle(fontSize: 32)),
                    title: Text(menu.titre),
                    subtitle: Text(menu.description),
                  ),
                );
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Ajouter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
