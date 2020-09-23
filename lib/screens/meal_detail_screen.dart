import 'package:flutter/material.dart';
import 'package:projeto_cozinhar/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final meal = ModalRoute.of(context).settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Center(
        child: Text(meal.title),
      ),
    );
  }
}
