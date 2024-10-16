import 'package:flutter/material.dart';
import 'package:testlogic/Logic/Text_Field.dart';
import 'Logic/widget.dart';
import 'package:testlogic/Logic/background.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return background(
      top: heightSize(222),
      Column(
        children: [
          Padding(padding: EdgeInsets.only(left: withSize(118), top: heightSize(24), right: withSize(117), bottom: heightSize(14)),
            child: Text('TYPE YOUR EMAIL', style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Color(0xff888BF4)
            ),),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: withSize(16)),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Text('We will send you instruction on how to reset your password', maxLines: 2, textAlign: TextAlign.center, style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400,
            ),),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffF1F1FE)
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: textField(emailController, hintTextStyle: TextStyle(fontWeight: FontWeight.w400,color: Color(0xffBDBDBD, )), 'Email', false, textAlign: TextAlign.start),
          ),
          SizedBox(height: 98,),
          widget().navigate(context, 'verify', child: widget().container('SEND')),
          SizedBox(height: 65.59,),
          Image.asset('assets/BackGround/Group 7030.png'),
        ],
      ),
    );
  }
}
