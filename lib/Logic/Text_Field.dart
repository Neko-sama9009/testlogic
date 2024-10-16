import 'package:flutter/material.dart';
import 'package:testlogic/Logic/widget.dart';

Widget textField(TextEditingController controller, String hintText, bool obscureText,
    {Widget? suffixIcon, bool? noneBorder = true, TextStyle? hintTextStyle,
      TextAlign? textAlign, bool borderRadius = true,
      Color? colorContainer, Widget? prefixIcon, Icon? icon,
      double? withContainer, double? heightContainer,
      int? maxLines, int? maxLength,
      EdgeInsets? padding, EdgeInsets? contentPadding,
    }) {
  return StatefulBuilder(builder: (BuildContext context, StateSetter setState){
    return Container(
      width: withContainer ?? withSize(315),
      height: heightContainer ?? heightSize(50),
      padding: padding ?? EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      decoration: BoxDecoration(
        color: colorContainer ?? Color(0xffF3F5F7), // Màu nền
        borderRadius: borderRadius ? BorderRadius.circular(30) : BorderRadius.zero,
        border: noneBorder == true
            ? null
            : Border.all(color: Colors.grey),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        textAlign: textAlign ?? TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: contentPadding ?? EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon != null? IconButton(onPressed: (){
            setState(() {
              obscureText = !obscureText;
            });
          }, icon: suffixIcon,) : null,
          border: noneBorder == true ? InputBorder.none : OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          enabledBorder: noneBorder == true
              ? InputBorder.none
              : OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: noneBorder == true
              ? InputBorder.none
              : OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          hintStyle: hintTextStyle ?? TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  });
}