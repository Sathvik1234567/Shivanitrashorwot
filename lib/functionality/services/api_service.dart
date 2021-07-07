import 'dart:convert';
import 'dart:io';
import 'package:bmibc/functionality/models/meal_plan_model.dart';
import 'package:bmibc/functionality/models/recipe_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  APIService._instantiate();

  static final APIService instance = APIService._instantiate();

  final String _baseUrl = 'api.spoonacular.com';
  static const String API_KEY = '7e007e3ff2fc4182839b0c47e624017c';

  // Generate Meal Plan
  Future<MealPlan> generateMealPlan({int targetCalories, String diet}) async {
    if (diet == 'None') diet = '';
    Map<String, String> parameters = {
      'timeFrame': 'day',
      'targetCalories': targetCalories.toString(),
      'diet': diet,
      'apiKey': API_KEY,
    };
    print("##################################");
    print(parameters);
    Uri uri = Uri.https(
      _baseUrl,
      'mealplanner/generate?apiKey=$API_KEY&timeFrame=day&targetCalories=$targetCalories&diet=$diet',
      parameters,
    );
    print(uri.toFilePath());
    print("************************");
    String uriTest="https://api.spoonacular.com/mealplanner/generate?apiKey=$API_KEY&timeFrame=day&targetCalories=$targetCalories&diet=$diet";
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    try {
      var response = await http.get(uriTest, headers: headers);
      Map<String, dynamic> data = json.decode(response.body);
      MealPlan mealPlan = MealPlan.fromMap(data);
      return mealPlan;
    } catch (err) {
      throw err.toString();
    }
  }

  // Recipe Info
  Future<Recipe> fetchRecipe(String id) async {
    Map<String, String> parameters = {
      'includeNutrition': 'false',
      'apiKey': API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/recipes/$id/information?apiKey=$API_KEY',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    try {
      var response = await http.get(uri, headers: headers);
      Map<String, dynamic> data = json.decode(response.body);
      Recipe recipe = Recipe.fromMap(data);
      return recipe;
    } catch (err) {
      throw err.toString();
    }
  }
}
