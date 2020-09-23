import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200, //Tamanho máximo para minha child
        childAspectRatio: 3 / 2, // Proporção da minha child (definida de 3 x 2)
        crossAxisSpacing: 20, // Espaçamento no eixo cruzado de 20
        mainAxisSpacing: 20, // Espaçamento no eixo principal de 20
      ),
      children: [
        
      ],
    );
  }
}
