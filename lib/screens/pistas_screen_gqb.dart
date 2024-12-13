import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class PistasScreen extends StatelessWidget {

  const PistasScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
            horizontal: 20, vertical: 10), // Poner espacio alrededor
        children: const [
          CustomCard(imageUrl: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg', desc: "Tempor pariatur consequat dolore pariatur commodo do amet dolore sunt labore minim."),
          SizedBox(height: 10),
          CustomCard(imageUrl: 'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg', desc: "Anim aliquip elit consequat exercitation.",),
          SizedBox(height: 10),
          CustomCard(imageUrl: 'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg', desc: "Nulla velit qui amet ullamco amet non duis officia.",),
        ],
      ),
    );
  }
}