import 'package:bmi_calculator/Core/Colors.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Core/global_vars.dart' as global;

class SetHeight extends StatefulWidget {
  const SetHeight({super.key});

  @override
  State<SetHeight> createState() => _SetHeightState();
}

class _SetHeightState extends State<SetHeight> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(fontSize: 20.0, color: Colors.white,),
                      ),
                      Text(
                        global.height.toStringAsFixed(1),
                        style: TextStyle(fontSize: 30.0, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Slider(
                        value: global.height,
                        onChanged: (double value) {
                          setState(() {
                            global.height = value;
                          });
                        },
                        min: 120.0,
                        max: 220.0,
                      )
                    ],
                  ),
                ),
    );
  }
}