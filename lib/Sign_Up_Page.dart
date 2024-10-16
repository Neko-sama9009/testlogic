import 'package:flutter/material.dart';
import 'package:testlogic/Logic/widget.dart';
import 'package:testlogic/Logic/Text_Field.dart';
import 'package:testlogic/Logic/background.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController email1Controller = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return background(
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: heightSize(40), left: withSize(30), right: withSize(30), bottom: heightSize(20)),
            child: textField(emailController, 'Email', false),
          ),
          Padding(
            padding: EdgeInsets.only(left: withSize(30), right: withSize(30), bottom: heightSize(20)),
            child: textField(email1Controller, 'Email', false),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: withSize(30)),
              child: textField(passwordController, 'Password', true, suffixIcon: Image.asset('assets/Icon/Show.png')),
          ),
          SizedBox(height: 40,),
          widget().navigate(context, '', child: widget().container('SIGN IN'),
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have account?"),
              widget().navigate(context, 'sign in', child:
              Text('SIGN IN', style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w400,
                color: Colors.blueAccent,
              ),))
            ],
          )
        ],
      ),
    );
  }
}
