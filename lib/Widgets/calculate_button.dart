import 'package:bmi_calculator/Core/Colors.dart';
import 'package:flutter/material.dart';

class calculate_button extends StatelessWidget {
  const calculate_button({
    super.key,
    required this.onPressed,
    required this.ButtonName,
  });
  final Function() onPressed;
  final String ButtonName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.0,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.accentColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
        child: Text(
          ButtonName,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}
