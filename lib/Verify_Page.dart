import 'package:flutter/material.dart';
import 'package:testlogic/Logic/Text_Field.dart';
import 'Logic/widget.dart';
import 'Logic/background.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController codeController = TextEditingController();
    return Scaffold(
      body: background(
        top: heightSize(222),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: withSize(133),
                top: heightSize(24),
                right: withSize(132),
                bottom: heightSize(14),
              ),
              child: Text(
                'VERIFICATION',
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
                'A message with verification code was sent to your mobile phone.',
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
            SizedBox(height: 40),
            textField(codeController, 'Type verification code', false),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: withSize(73.5), vertical: 40),
              child: Text(
                "DON'T RECEIVE THE CODE",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            widget().navigate(context, 'new password', child: widget().container('VERIFY')),
            SizedBox(height: 65.59),
            Image.asset('assets/BackGround/Group 7030.png'),
          ],
        ),
      ),
    );
  }
}
