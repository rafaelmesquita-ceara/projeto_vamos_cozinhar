import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,  
          fontFamily: 'Raleway', // Fonte padrão definida como Raleway
          canvasColor: Color.fromRGBO(255, 254, 229, 1), //Cor de fundo branco padrão
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        '/categories-meals': (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}
