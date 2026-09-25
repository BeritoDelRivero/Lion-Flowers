import 'package:flutter/material.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Icon(Icons.favorite,size: 80,color: Colors.pink,),
          SizedBox(height: 15),

          Text("Mis favoritos",
          style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,),
          ),

          SizedBox(height: 8),
          Text("Tu flor favorita",
          ),
        ],
      ),
    );
  }
}