import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class CIcon extends StatelessWidget {
  final IconData img;
  const CIcon(this.img);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: 40,
      width: 40,
      
      decoration:
          BoxDecoration(shape: BoxShape.circle, border: Border.all(color: const Color(0XffE8E8E8),)),
      child: IconButton(onPressed: onPressed, icon: Icon(img),  color: Colors.black,),
    ));
  }

  void onPressed() {}
}
