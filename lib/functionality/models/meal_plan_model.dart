import 'package:bmibc/functionality/models/meal_model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class MealPlan {
  final List<Meal> meals;
  final double calories;
  final double carbs;
  final double fat;
  final double protein;

  MealPlan({
    this.meals,
    this.calories,
    this.carbs,
    this.fat,
    this.protein,
  });

  factory MealPlan.fromMap(Map<String, dynamic> map) {
    print(map);
    print("***********************"+map.keys.first);
    List<Meal> meals = [];
    // ignore: non_constant_identifier_names

// for(var meal in map['meals']){
//   Meal(1,"asd","");
// }
    map['meals'].forEach(
      (mealMap) => meals.add(
        Meal.fromMap(mealMap),
      ),
    );
    print("*************%%%%%%%%%%%%%%%%%%%%%%***********************");
    print(meals);
    return MealPlan(
      meals: meals,
      calories: map['nutrients']['calories'],
      carbs: map['nutrients']['carbohydrates'],
      fat: map['nutrients']['fat'],
      protein: map['nutrients']['protein'],
    );
  }
}
