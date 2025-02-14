import 'package:bmi_calculator/Core/Colors.dart';
import 'package:bmi_calculator/Page/calculator_page.dart';
import 'package:bmi_calculator/Widgets/calculate_button.dart';
import 'package:bmi_calculator/Widgets/final_result.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, required this.result});
  final double result;

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Expanded(
            child: Column(
              children: [
                Text(
                  "Your result",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                FinalResult(widget: widget),
                SizedBox(
                  height: 10,
                ),
                calculate_button(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CalculatorPage()));
                  },
                  ButtonName: 'ReCalculate',
                )
              ],
            ),
          ),
        ));
  }
}
