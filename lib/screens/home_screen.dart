import 'package:flutter/material.dart';
import '../models/producto.dart';
import '../widgets/producto_card.dart';
import 'favorito_screen.dart';
import 'perfil_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int paginaActual = 0;

  final paginas = const [
    CatalogoScreen(),
    FavoritosScreen(),
    PerfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: paginas[paginaActual],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaActual,
        onTap: (index) => setState(() => paginaActual = index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: "Flores",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});

  static const productos = [
    Producto(nombre: "Rosas", precio: 45, imagen:'https://canjuanito.com/cuidados-de-las-rosas/'),
    Producto(nombre: "Tulipanes", precio: 52, imagen:'//images.unsplash.com/photo-1490750967868-88aa4486c946'),
    Producto(nombre: "Narcisos", precio: 48, imagen:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScV-_BwhwpG0zx2lOgugCYzlraALq8tikOAHQMLRYGhDteelVZsUXXFaA1&s=10'),
    Producto(nombre: "Girasoles", precio: 39, imagen:'https://www.google.com/imgres?q=girasoles&imgurl=https%3A%2F%2Fzinniaflors.com%2Fmodules%2Fph_simpleblog%2Fcovers%2F104.jpg&imgrefurl=https%3A%2F%2Fzinniaflors.com%2Fblog%2Fflores%2Fgirasoles&docid=DZJKbioW3BKw-M&tbnid=9XsBdFyJTZbkEM&vet=12ahUKEwjS4vGr9YqXAxVFJkQIHfKnMdYQnPAOegUIrgEQAA..i&w=640&h=427&hcb=2&ved=2ahUKEwjS4vGr9YqXAxVFJkQIHfKnMdYQnPAOegUIrgEQAA'),
    Producto(nombre: "Flores Blancas", precio: 55, imagen:'//images.unsplash.com/photo-1490750967868-88aa4486c946'),
    Producto(nombre: "Jazmines", precio: 60, imagen:'//images.unsplash.com/photo-1490750967868-88aa4486c946'),
    Producto(nombre: "Lirios", precio: 70, imagen:'//images.unsplash.com/photo-1490750967868-88aa4486c946'),
    Producto(nombre: "Margaritas", precio: 58, imagen:'//images.unsplash.com/photo-1490750967868-88aa4486c946'),
    Producto(nombre: "Orquídeas", precio: 75, imagen:'//images.unsplash.com/photo-1490750967868-88aa4486c946'),
    Producto(nombre: "Flor de Loto", precio: 85, imagen:'//images.unsplash.com/photo-1490750967868-88aa4486c946'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lion Flowers"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: .68,
        ),
        itemCount: productos.length,
        itemBuilder: (_, i) => ProductoCard(producto: productos[i]),
      ),
    );
  }
}