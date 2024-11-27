import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ing_3_2025/components/ingrediant_card.dart';
import 'package:ing_3_2025/components/meal_card.dart';
import 'package:ing_3_2025/components/my_button.dart';
import 'package:ing_3_2025/components/my_textfield.dart';
import 'package:ing_3_2025/helpers/route.dart';
import 'package:ing_3_2025/helpers/validators.dart';
import 'package:ing_3_2025/models/ingrediant_model.dart';
import 'package:ing_3_2025/models/meal_model.dart';

class AddNewMealPage extends StatefulWidget {
  const AddNewMealPage({super.key});

  @override
  State<AddNewMealPage> createState() => _AddNewMealPageState();
}

class _AddNewMealPageState extends State<AddNewMealPage> {
  final TextEditingController mealNameCTRL = TextEditingController();
  final TextEditingController mealImgCTRL = TextEditingController();

  final TextEditingController ingrediantNameCTRL = TextEditingController();
  final TextEditingController ingrediantQuantityCTRL = TextEditingController();
  List<IngrediantModel> listOfIngrediants = [];

  GlobalKey<FormState> keyFormState = GlobalKey<FormState>();

  final emailPatternRule =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  void removeIngrediant(IngrediantModel ingrediantTMP) {
    setState(() {
      listOfIngrediants.removeWhere((element) => element == ingrediantTMP);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create new meal",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // form to check validation of text editing controllers
                Form(
                  key: keyFormState,
                  child: Column(
                    children: [
                      MyTextField(
                        hinttext: "Entre the name of meal",
                        myController: mealNameCTRL,
                        myIcon: Icon(Icons.restaurant_menu),
                        isObscure: false,
                        myValidator: (value) => myValidator(
                          isRequired: true,
                          fieldName: "Meal name",
                          value: value,
                          rules: '',
                          alertMessage: '${emailPatternRule}',
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyTextField(
                        hinttext: "Select img",
                        myController: mealImgCTRL,
                        myIcon: Icon(Icons.image),
                        isObscure: false,
                        myValidator: (value) => myValidator(
                          isRequired: true,
                          fieldName: "Meal img",
                          value: value,
                          rules: '',
                          alertMessage: '${emailPatternRule}',
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "List of ingrediants",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),

                          //
                          Row(
                            children: [
                              Expanded(
                                child: MyTextField(
                                  hinttext: "Name",
                                  myController: ingrediantNameCTRL,
                                  myIcon: Icon(Icons.text_fields),
                                  isObscure: false,
                                  myValidator: (value) => myValidator(
                                    isRequired: false,
                                    fieldName: "Ingrediant name",
                                    value: value,
                                    rules: '',
                                    alertMessage: 'aucun alert',
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: MyTextField(
                                  hinttext: "Quantity",
                                  myController: ingrediantQuantityCTRL,
                                  myIcon: Icon(Icons.numbers),
                                  isObscure: false,
                                  myValidator: (value) => myValidator(
                                    isRequired: false,
                                    fieldName: "Quantity",
                                    value: value,
                                    rules: '',
                                    alertMessage: 'aucun alert',
                                  ),
                                ),
                              ),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () {
                                  //-------------------------------------------------------------Not Clear
                                  setState(() {
                                    IngrediantModel mealTMP = IngrediantModel(
                                      name: ingrediantNameCTRL.text,
                                      quantite: double.parse(
                                          ingrediantQuantityCTRL.text),
                                    );
                                    listOfIngrediants.add(mealTMP);
                                  });

                                  //
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount: listOfIngrediants.length,
                              itemBuilder: (context, index) {
                                return IngrediantCard(
                                  ingrediantTMP: listOfIngrediants[index],
                                  removeIngrediant: removeIngrediant,
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                MyButton(
                  butLabel: "Save",
                  onePressed: () {
                    if (keyFormState.currentState!.validate()) {
                      //
                      MealModel mealTMP = MealModel(
                          name: mealNameCTRL.text,
                          imgPath: mealImgCTRL.text,
                          listOfIngrediant: listOfIngrediants);

                      Navigator.pop(
                        context,
                        mealTMP,
                      );
                    } else {
                      Fluttertoast.showToast(
                        msg: "Your entries isn't valide",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
