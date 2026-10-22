// Modèle de données : un menu de la garderie.
class Menu {
  const Menu({
    required this.id,
    required this.titre,
    required this.description,
    required this.icone,
  });

  final int id;
  final String titre;
  final String description;
  final String icone; // un emoji = du texte
}

// Liste statique déclarée directement dans le code.
const List<Menu> menus = [
  Menu(id: 1, titre: "Petit déjeuner", description: "Lait, céréales et fruits", icone: "🥣"),
  Menu(id: 2, titre: "Déjeuner", description: "Poulet, riz et légumes", icone: "🍲"),
  Menu(id: 3, titre: "Goûter", description: "Biscuit et compote de pomme", icone: "🍪"),
  Menu(id: 4, titre: "Jus de fruits", description: "Jus d'orange naturel", icone: "🍊"),
  Menu(id: 5, titre: "Fruits frais", description: "Une sélection de fruits de saison", icone: "🍎"),
];
