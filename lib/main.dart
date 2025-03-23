import 'package:flutter/material.dart';
import 'package:navigation_and_multiple_screens/presentation/screens/categories_meals_screen.dart';
import 'package:navigation_and_multiple_screens/presentation/screens/categories_screen.dart';
import 'package:navigation_and_multiple_screens/utils/app_routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.light(
          secondary: Colors.amber,
        ),
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
        titleMedium: TextStyle(
          fontSize: 20,
          fontFamily: 'RobotoCondensed',
        )
      )
      ),
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
      },
    );
  }
}