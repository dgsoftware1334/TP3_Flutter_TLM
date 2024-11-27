import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ing_3_2025/helpers/route.dart';
import 'package:ing_3_2025/models/day_meal_model.dart';
import 'package:ing_3_2025/models/meal_model.dart';
//import 'package:sizer/sizer.dart';

class DayCard extends StatelessWidget {
  final DayMealModel dayTMP;
  const DayCard({super.key, required this.dayTMP});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(
        left: screenWidth * 0.05,
        right: screenWidth * 0.03,
        top: screenHeight * 0.01,
      ),
      height: screenHeight * 0.12,
      //  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      margin: EdgeInsets.fromLTRB(screenWidth * 0.05, screenHeight * 0.01,
          screenWidth * 0.05, screenHeight * 0.01),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.amber,
        /*  boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(1),
            blurRadius: 4.0,
            spreadRadius: 4.0,
          ),
                BoxShadow(
            color: Colors.green.withOpacity(1),
            blurRadius: 4.0,
            spreadRadius: 2.0,
          ),
        ],*/
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(dayTMP.dayName,
              style: const TextStyle(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                //
                Navigator.pushNamed(
                  context,
                  InternalRoute.getRouteDayDetails(),
                  arguments: dayTMP.listOfMeals,
                );
              },
              icon: const Icon(Icons.visibility),
              color: Colors.green.shade700,
            ),
            SizedBox(
              width: screenWidth * 0.05,
            ),
            InkWell(
              onTap: () async {
                //
                final createdMeal = await Navigator.pushNamed(
                  context,
                  InternalRoute.getRouteAddNewMeal(),
                  arguments: dayTMP.listOfMeals,
                );

                // Require cast to MealModel
                if (createdMeal != null) {
                  dayTMP.listOfMeals.add(createdMeal as MealModel);
                }
              },
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: screenHeight * 0.04,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
