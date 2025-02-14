import 'package:bmi_calculator/Core/Colors.dart';
import 'package:bmi_calculator/Core/global_vars.dart';
import 'package:bmi_calculator/Page/result_page.dart';
import 'package:bmi_calculator/Widgets/calculate_button.dart';
import 'package:bmi_calculator/Widgets/gender_box.dart';
import 'package:bmi_calculator/Widgets/set_age.dart';
import 'package:bmi_calculator/Widgets/set_height.dart';
import 'package:bmi_calculator/Widgets/set_weight.dart';
import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});
  @override
  State<CalculatorPage> createState() => CalcPage();
}

class CalcPage extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leading: Icon(
            Icons.local_pizza_rounded,
            color: Colors.orange,
          ),
          title: const Text(
            'BMI Calculator',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      GenderBox(
                        gender_box: Icon(
                          Icons.male,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        gender_type: 'male',
                        onTap: () => setState(() {
                          ismale = true;
                        }),
                        BoxColor: ismale
                            ? AppColors.accentColor
                            : AppColors.secondaryColor,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      GenderBox(
                        gender_box: Icon(
                          Icons.female,
                          size: 70.0,
                          color: Colors.white,
                        ),
                        gender_type: 'female',
                        onTap: () => setState(() {
                          ismale = false;
                        }),
                        BoxColor: !ismale
                            ? AppColors.accentColor
                            : AppColors.secondaryColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                SetHeight(),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Row(
                    children: [
                      SetWeight(),
                      SizedBox(
                        width: 20.0,
                      ),
                      SetAge(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                calculate_button(
                  onPressed: () {
                    int w = weight;
                    double h = height / 100;
                    double result = w / (h * h);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultPage(
                                  result: result,
                                )));
                  },
                  ButtonName: 'Calculate',
                )
              ],
            ),
          ),
        ));
  }
}
