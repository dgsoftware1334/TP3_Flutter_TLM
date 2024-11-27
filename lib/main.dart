import 'package:flutter/material.dart';
import 'package:ing_3_2025/helpers/route.dart';
import 'package:ing_3_2025/screens/add_new_meal_page.dart';
import 'package:ing_3_2025/screens/details_meal_page.dart';
import 'package:ing_3_2025/screens/home.dart';
import 'package:ing_3_2025/screens/login_screen.dart';
import 'package:ing_3_2025/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        InternalRoute.getRouteHome(): (context) => HomeView(),
        InternalRoute.getRouteLogin(): (context) => LoginPage(),
        InternalRoute.getRouteSignUp(): (context) => SignupPage(),
        InternalRoute.getRouteDayDetails(): (context) => DetailsMealPage(),
        InternalRoute.getRouteAddNewMeal(): (context) => AddNewMealPage()
      },
      home: LoginPage(),
    );
  }
}
