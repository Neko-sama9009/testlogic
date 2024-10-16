import 'package:flutter/material.dart';
import 'package:testlogic/Logic/widget.dart';

class ChooseAProfession extends StatefulWidget {
  const ChooseAProfession({super.key});

  @override
  State<ChooseAProfession> createState() => _ChooseAProfessionState();
}

class _ChooseAProfessionState extends State<ChooseAProfession> {
  TextEditingController exploreController = TextEditingController();
  int? selectedImageIndex;
  final List<String> imagePaths = [
    'assets/BackGround/photographer.png',
    'assets/BackGround/video_creator.png',
    'assets/BackGround/Illustrator.png',
    'assets/BackGround/Designer.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(children: [
            Image.asset(
              'assets/BackGround/Group 7014.png',
              height: heightSize(139),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: heightSize(76.74),
              left: withSize(148),
              child: Text(
                'I.click',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                  color: Color(0xffFFFFFF),
                ),
              ),
            ),
          ]),
          SizedBox(height: heightSize(39)),
          Text(
            'Who are you',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xff242424),
            ),
          ),
          SizedBox(height: heightSize(40)),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // Số cột
              padding: EdgeInsets.symmetric(vertical: heightSize(20), horizontal: withSize(25)),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(imagePaths.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedImageIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedImageIndex == index
                            ? Colors.blue // Màu viền khi được chọn
                            : Colors.transparent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        imagePaths[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: heightSize(20),),
          Text('SHARE - INSPIRE - CONNECT', style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w400,
            color: Color(0xff888BF4)
          ),),
          SizedBox(height: heightSize(37),),
          widget().navigate(context, 'explore', child: widget().container('EXPLORE NOW')),
          SizedBox(height: heightSize(40),)
        ],
      ),
    );
  }
}
