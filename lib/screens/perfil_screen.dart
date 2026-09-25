import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          CircleAvatar(
            radius: 50,
            child: Icon(Icons.person,size: 55,),),
          SizedBox(height: 15),
          Text("Mi perfil",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,),),

          SizedBox(height: 8),
          Text("Bienvenid@s a Lion Flowers",),
        ],
      ),
    );
  }
}