import 'package:ing_3_2025/models/ingrediant_model.dart';

class MealModel {
  final String name;
  final String imgPath;
  final List<IngrediantModel> listOfIngrediant;

  MealModel({
    required this.name,
    required this.imgPath,
    required this.listOfIngrediant,
  });
}
