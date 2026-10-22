import 'package:flutter/material.dart';

import '../data/menus.dart';

// StatefulWidget : _selectedIndex change quand on choisit une entrée du Drawer.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // 0 = Accueil, 1 = Menus, 2 = À propos

  static const _entries = [
    (icon: Icons.home, label: 'Accueil'),
    (icon: Icons.restaurant_menu, label: 'Menus'),
    (icon: Icons.info, label: 'À propos'),
  ];

  // Affiche un message en bas de l'écran (Snackbar).
  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Recherche',
            onPressed: () => _showMessage('Rechercher un menu'),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () => _showMessage('Aucune notification'),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF5B9BEA)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text('Ma Garderie', style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            for (var i = 0; i < _entries.length; i++)
              ListTile(
                leading: Icon(_entries[i].icon),
                title: Text(_entries[i].label),
                selected: _selectedIndex == i, // entrée surlignée
                onTap: () {
                  setState(() => _selectedIndex = i);
                  Navigator.pop(context); // ferme le Drawer
                  _showMessage(_entries[i].label);
                },
              ),
          ],
        ),
      ),
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
                    // Clic sur un menu : son titre dans un Snackbar
                    onTap: () => _showMessage(menu.titre),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showMessage('Ajouter un menu'),
        tooltip: 'Ajouter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
