import 'package:flutter/material.dart';
import 'package:testlogic/Log_In_Page.dart';
import 'package:testlogic/Logic/widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Image.asset('assets/BackGround/27059 1.png', width: double.infinity, fit: BoxFit.cover,),
              Positioned(
                top: heightSize(136),
                  left: withSize(14.89),
                  child: Image.asset('assets/BackGround/Component 7045.png')),
              Positioned(
                top: heightSize(70),
                  left: withSize(150),
                  right: withSize(137.12),
                  child: const Text('I.click', style:
                    TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),)),
              Positioned(
                  top: heightSize(591),
                  left: withSize(98),
                  child: Text('SHARE - INSPIRE - CONNECT', style:
                  TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),)),
              Positioned(
                top: heightSize(651),
                  left: withSize(120),
                  child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage()));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xffD0D0D0)
                  ),
                  child: const Text('GET STARTED', style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),),
                ),
              ))
            ],
          ),
      ),
    );
  }
}
