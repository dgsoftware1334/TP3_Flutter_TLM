import 'package:ing_3_2025/models/meal_model.dart';

class DayMealModel {
  final String dayName;
  final List<MealModel> listOfMeals;

  DayMealModel({
    required this.dayName,
    required this.listOfMeals,
  });
}
