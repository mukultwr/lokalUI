import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  final String clrval;
  const CButton(this.clrval);
  
  int hexColor(String color){
      String newColor='0xff'+color;
      newColor=newColor.replaceAll('#', '');
      int finalColor=int.parse(newColor);
      return finalColor;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:Color(hexColor(clrval)),
              border: Border.all(width: 1)
            ),)
    );
  }
}