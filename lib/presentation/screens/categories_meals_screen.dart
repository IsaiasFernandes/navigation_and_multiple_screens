import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';
import '../../domain/models/category.dart';
import '../components/meal_item.dart';

class CategoriesMealsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();
    print('categoryMeals: ${categoryMeals.length}');
    return Scaffold(
      appBar: AppBar(title: Text('Receitas'), centerTitle: true),
      body: ListView.builder(
            itemCount: categoryMeals.length,
            itemBuilder: (ctx, index) {
              return MealItem(categoryMeals[index]);
            },
        ),
    );
  }
}
