import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String desc;

  const CustomCard({super.key, required this.imageUrl, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Card(
      // Bordes redonditos, que no se sobresalga la imagen...
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/stop.jpg'),
            width: double.infinity, // Coger todo el ancho
            height: 260,
            fit: BoxFit.cover, // Adaptar la imagen si se sale
            fadeInDuration:
                const Duration(seconds: 1), // Ajustar animación de aparición
          ),
        ],
      ),
    );
  }
}
