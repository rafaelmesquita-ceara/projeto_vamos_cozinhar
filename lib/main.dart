import 'package:flutter/material.dart';
import 'package:projeto_cozinhar/screens/meal_detail_screen.dart';
import 'utils/app_routes.dart';
import 'screens/categories_screen.dart';
import 'screens/categories_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals', // Titulo da aplicação
      theme: ThemeData( // Definindo parâmetros do meu tema
          primarySwatch: Colors.pink, // Primary Color
          accentColor: Colors.amber,  // Cor de acentuação
          fontFamily: 'Raleway', // Fonte padrão definida como Raleway
          canvasColor:
              Color.fromRGBO(255, 254, 229, 1), //Cor de fundo branco padrão
          textTheme: ThemeData.light().textTheme.copyWith( // Alterando o tema light
                title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
      routes: { // Definindo rotas nomeadas
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
      },
      onUnknownRoute: (settings) { // Quando a rota é desconhecida, chamará a CategoriesScreen
        return MaterialPageRoute(builder: (_){
          return CategoriesScreen();
        },);
      },
    );
  }
}
