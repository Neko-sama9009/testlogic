import 'package:flutter/material.dart';
import 'package:testlogic/Logic/widget.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 1380,
          child: Stack(
            children: [
              Positioned(
                top: 0, left: 0,
                  child: Image.asset('assets/BackGround/Rectangle 4.png', width: withSize(375), height: heightSize(200), fit: BoxFit.cover,)),
              Positioned(
                top: 52,
                left: 16,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffFFFFFF)
                      ),
                      padding: EdgeInsets.all(6),
                      child: Image.asset('assets/Icon/arrow-left.png'),
                    ),
                    SizedBox(width: withSize(235),),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFFFFF)
                      ),
                      padding: EdgeInsets.all(6),
                      child: Image.asset('assets/Icon/search-normal.png'),
                    ),
                    SizedBox(width: withSize(12),),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffFFFFFF)
                      ),
                      padding: EdgeInsets.all(6),
                      child: Image.asset('assets/Icon/share.png'),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 160,
                  left: 16,
                  child: Container(
                    width: withSize(343),
                height: heightSize(184),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 8,
                      spreadRadius: 0,
                      offset: Offset(0, 2)
                    ),
                  ],
                  color: Color(0xffFFFFFF)
                ),
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(16),
                          child: Text('PIKACHU Cháo Ếch - Xôi Ếch - Mì Quảng - Hủ Tiếu', style: TextStyle(
                          fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Color(0xff121212)
                        ),),),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Image.asset('assets/Icon/Frame 96.png'),
                        ),
                        SizedBox(height: heightSize(16),),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Image.asset('assets/Icon/danh_gia.png'),
                        ),
                      ],
                    ),
              )),
              Positioned(
                  top: heightSize(368),
                  left: withSize(16),
                  child: Image.asset('assets/Icon/sales.png', width: withSize(343), height: heightSize(92), fit: BoxFit.cover,)),
              Positioned(
                  top: heightSize(488),
                  left: withSize(16),
                  child: Image.asset('assets/Icon/Frame 12521.png', width: withSize(343), height: heightSize(132), fit: BoxFit.cover,)),
              Positioned(
                top: 646,
                  child: Image.asset('assets/Icon/Frame 12603.png', )
              ),
              Positioned(
                  top: 710,
                  child: Image.asset('assets/Icon/Frame 12602.png')
              ),
              Padding(
                padding: const EdgeInsets.only(top: 770),
                child: Container(
                  width: double.infinity,
                  height: heightSize(610),
                  child: ListView.builder(
                    itemCount: 5, // Số lượng mục
                    itemBuilder: (context, index) {
                      return Image.asset('assets/Icon/content.png');
                    },
                  ),
                ),
              ),
              Positioned(
                  top: heightSize(1260),
                  left: withSize(303),
                  child: Image.asset('assets/Icon/Frame 12543.png')
              ),
            ],
          ),

        ),
      ),
    );
  }
}
