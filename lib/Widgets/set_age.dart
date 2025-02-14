import 'package:bmi_calculator/Core/Colors.dart';
import 'package:bmi_calculator/Core/global_vars.dart'as global;
import 'package:flutter/material.dart';

class SetAge extends StatefulWidget {
  const SetAge({super.key});

  @override
  State<SetAge> createState() =>_SetAge();
}

class _SetAge extends State<SetAge> {
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
                          'Age',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          global.age.toString(),
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () => setState(() {
                                global.age--;
                              }),
                              heroTag: 'age-',
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: () => setState(() {
                                global.age++;
                              }),
                              heroTag: 'age+',
                              mini: true,
                              child: Icon(Icons.add),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
    );
  }
}