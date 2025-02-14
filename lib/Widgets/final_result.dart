import 'package:bmi_calculator/Core/Colors.dart';
import 'package:bmi_calculator/Page/result_page.dart';
import 'package:flutter/material.dart';

class FinalResult extends StatelessWidget {
  const FinalResult({
    super.key,
    required this.widget,
  });

  final ResultPage widget;
  String _getStatus(double result) {
    if (result < 18.5) {
      return "Underweight";
    } else if (result < 24.9) {
      return "Normal weight";
    } else if (result < 29.9) {
      return "Overweight";
    } else {
      return "Obesity";
    }
  }

  String statDescription(double result) {
    if (result < 18.5) {
      return "You are underweight. It's important to eat a balanced diet.";
    } else if (result < 24.9) {
      return "You have a normal weight. Keep up the good work!";
    } else if (result < 29.9) {
      return "You are overweight. Consider a healthy diet and exercise.";
    } else {
      return "You are obese. It's important to consult with a healthcare provider.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _getStatus(widget.result),
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              widget.result.toStringAsFixed(2),
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              statDescription(widget.result),
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
