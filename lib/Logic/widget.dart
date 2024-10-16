import 'package:flutter/material.dart';
import 'package:testlogic/Choose_A_Profession.dart';
import 'package:testlogic/Food_Page.dart';
import 'package:testlogic/Home_Screen.dart';
import 'package:testlogic/Log_In_Page.dart';
import 'package:testlogic/Logic/Text_Field.dart';
import 'package:testlogic/Sign_Up_Page.dart';
import 'package:testlogic/Verify_Page.dart';
import 'package:testlogic/Change_Password.dart';

double? sizeWith;
TextEditingController searchController = TextEditingController();

double withSizePhone(BuildContext context) {
  sizeWith = MediaQuery.of(context).size.width;
  return sizeWith!;
}
double? sizeHeight;

double heightSizePhone(BuildContext context) {
  sizeHeight = MediaQuery.of(context).size.height;
  return sizeHeight!;
}

double withSize(double sizes) {
  if (sizeWith == null) return sizes;
  return sizes * (sizeWith! / 375);
}

double heightSize(double sizes) {
  if (sizeHeight == null) return sizes;
  return sizes * (sizeHeight! / 812);
}

class widget {
  navigate(BuildContext context, String page, {Widget? child}){
    return GestureDetector(
      onTap: (){
        if(page == 'log in'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChooseAProfession()));
        }
        if(page == 'sign up'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpPage()));
        }
        if(page == 'sign in'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage()));
        }
        if(page == 'verify'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyPage()));
        }
        if(page == 'new password'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChangePassword()));
        }
        if(page == 'explore'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
        }
        if(page == 'food'){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const FoodPage()));
        }
      },
      child: child ?? null,
    );
  }
  container(String title){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: withSize(30)),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xff888BF4)
      ),
      child: SizedBox(
        width: double.infinity,
        child: Center(child:
            Text(title, style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),),
        )
      ),
    );
  }
  appBar(){
    return SafeArea(child: Padding(
        padding: EdgeInsets.symmetric(vertical: heightSize(12), horizontal: withSize(20)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            textField(searchController, 'Search', false, prefixIcon: Image.asset('assets/Icon/Search.png'),
              withContainer: withSize(283), heightContainer: heightSize(37),
            padding: EdgeInsets.symmetric(horizontal: 5), colorContainer: Color(0xffF3F5F7)),
            SizedBox(width: withSize(16),),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/Icon/Frame 33843.png'),
            )
          ],
        ),
      ),
    );
  }
  bottomNavigationBar(){
    return Container(
      width: double.infinity,
      height: heightSize(105),
      child: Stack(
        children: [
          Positioned
            (
            bottom: 0, left: 0, right: 0,
              child: Image.asset('assets/BackGround/Surface.png', fit: BoxFit.cover,)),
          Positioned(
            top: -10, left: 157, right: 158,
              child: Image.asset('assets/BackGround/Group 7010.png')),
          Positioned(
            top: 48, left: 24,
              child: Image.asset('assets/BackGround/Home.png')),
          Positioned(
            top: 48, left: 90,
              child: Image.asset('assets/BackGround/Category copy.png')),
          Positioned(
              top: 48, right: 91.5,
              child: Image.asset('assets/BackGround/Notification copy.png', color: Color(0xff888BF4))),
          Positioned(
              top: 48, right: 24,
              child: Image.asset('assets/BackGround/Profile.png', color: Color(0xff888BF4),))

        ],
      ),
    );
  }
}

