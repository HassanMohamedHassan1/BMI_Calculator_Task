import 'package:bmi_calculator/Core/Colors.dart';
import 'package:bmi_calculator/Core/global_vars.dart'as global;
import 'package:flutter/material.dart';

class SetWeight extends StatefulWidget {
  const SetWeight({super.key});

  @override
  State<SetWeight> createState() =>_SetWeight();
}

class _SetWeight extends State<SetWeight> {
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
                          'Weight',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          global.weight.toString(),
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
                                global.weight--;
                              }),
                              heroTag: 'weight-',
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                            FloatingActionButton(
                              onPressed: () => setState(() {
                                global.weight++;
                              }),
                              heroTag: 'weight+',
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