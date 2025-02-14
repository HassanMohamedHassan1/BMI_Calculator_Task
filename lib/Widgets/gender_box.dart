import 'package:flutter/material.dart';

class GenderBox extends StatelessWidget {
  const GenderBox({
    super.key, required this.gender_box, required this.gender_type, required this.BoxColor, required this.onTap,
  });
  final Icon gender_box;
  final String gender_type;
  final Function() onTap;
  final Color BoxColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: (){onTap();},
        child: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: BoxColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             gender_box,
             Text(gender_type, style: TextStyle(fontSize: 20.0, color: Colors.white),),
            ],
          ),
         
        ),
      ),
    );
  }
}