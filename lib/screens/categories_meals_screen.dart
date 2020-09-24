import 'package:flutter/material.dart';
import '../models/category.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class CategoriesMealsScreen extends StatelessWidget {

  final List<Meal> meals;
  
  const CategoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category; // Pego meus argumentos passados pela rota e converto para Category

    final categoryMeals = meals.where((meal) {
      return meal.categories.contains(category.id); // Filtro minhas refeições de acordo com o id da categoria passada
    }).toList(); // Transformo meu where numa list

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index){
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
