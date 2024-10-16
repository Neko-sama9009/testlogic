import 'package:flutter/material.dart';
import 'Logic/Text_Field.dart';
import 'Logic/widget.dart';
import 'Logic/background.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Scaffold(
      body: background(
        top: heightSize(222),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: withSize(106),
                top: heightSize(24),
                right: withSize(105),
                bottom: heightSize(14),
              ),
              child: Text(
                'SET NEW PASSWORD',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(0xff888BF4),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: withSize(16)),
              padding: EdgeInsets.symmetric(vertical: heightSize(16), horizontal: withSize(24)),
              child: Text(
                'Type your new password',
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffF1F1FE),
              ),
            ),
            SizedBox(height: heightSize(40)),
            textField(passwordController, 'Password', true, suffixIcon: Image.asset('assets/Icon/Show.png'),),
            SizedBox(height: heightSize(20),),
            textField(confirmPasswordController, 'Confirm Password', true, suffixIcon: Image.asset('assets/Icon/Show.png'),),
            SizedBox(height: heightSize(40),),
            widget().navigate(context, 'sign in', child: widget().container('SEND')),
            SizedBox(height: heightSize(65.59)),
            Image.asset('assets/BackGround/Group 7030.png'),
          ],
        ),
      ),
    );
  }
}
