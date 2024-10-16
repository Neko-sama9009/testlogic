import 'package:flutter/material.dart';
import 'package:testlogic/Logic/widget.dart';

Widget background(Widget child, {double? withContainer, double? heightContainer, double? top, double? left, double? right, double? bottom}){
  return Scaffold(
    body: Stack(
      children: [
        Image.asset('assets/BackGround/group7013.png',width: 393, fit: BoxFit.cover,),
        Container(
          margin: EdgeInsets.only(top: top ?? heightSize(272)),
          width: withContainer ?? withSize(375),
          height: heightContainer ?? double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(28),
              topRight: Radius.circular(28),
            ),
          ),
          child: SingleChildScrollView(
            child: child,
          ),
        ),
      ],
    ),
  );
}