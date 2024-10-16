import 'package:flutter/material.dart';
import 'package:testlogic/Forgot_Password_Page.dart';
import 'package:testlogic/Logic/widget.dart';
import 'package:testlogic/Logic/Text_Field.dart';
import 'package:testlogic/Logic/background.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return background(
      Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: heightSize(40), left: withSize(30), right: withSize(30), bottom: heightSize(20)),
            child: textField(emailController, 'Email', false),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: withSize(30)),
            child: textField(passwordController, 'Password', true, suffixIcon: Image.asset('assets/Icon/Show.png', ),),
          ),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordPage()));
            },
            child: Text('FORGOT PASSWORD', style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color(0xff5252C7)
            ),),
          ),
          SizedBox(height: 40,),
          widget().navigate(context, 'log in', child: widget().container('LOG IN')),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: withSize(83.5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: withSize(46)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('OR LOG IN BY', style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14
                      ),),
                      SizedBox(height: heightSize(14),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/Icon/google.png'),
                          SizedBox(width: 20,),
                          Image.asset('assets/Icon/facebook.png'),

                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Text("Don't have account? "),
                    widget().navigate(context, 'sign up', child:
                    Text('SIGN UP', style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400,
                      color: Colors.blueAccent,
                    ),))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
