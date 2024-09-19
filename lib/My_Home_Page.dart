import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isVisible = false; // Biến để kiểm soát việc hiển thị thanh

  Flushbar? _flushBar;
  final List<Map<String, String>> _items = [
    {'Oh Snap!': 'You have failed to read this failure message. Please try again!'},
    {'Warning!': 'Sorry! There was a problem with your request.'},
    {'Hi There!': 'Do you have a problem? Just use this contact form.'},
    {'Well Done!': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit!'},
    {'Oh snap!': 'Sorry! There was a problem with your request.'},
    {'Well Done!': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit!'}
  ];

  final List<Color> colorPalette = [
    const Color(0xffC72C41),
    const Color(0xffEF8D32),
    const Color(0xff0070E0),
    const Color(0xff0C7040),
    const Color(0xffF64B3C),
    const Color(0xff4E8D7C)
  ];

  final List<Image> imageIcon = [
    Image.asset('assets/Icon/ErrorIcon.png'),
    Image.asset('assets/Icon/Icon2.png'),
    Image.asset('assets/Icon/Icon3.png'),
    Image.asset('assets/Icon/Icon4.png'),
    Image.asset('assets/Icon/Icon5.png'),
    Image.asset('assets/Icon/Icon6.png'),
  ];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    _animation = Tween<double>(begin: 1.0, end: 0.0).animate(_controller);
  }

  void _showFlushBar(String title, String message, Color colorBackground, Image imageIcon) {
    _flushBar = Flushbar(
      borderWidth: 1,
      backgroundColor: colorBackground,
      borderRadius: BorderRadius.circular(20),
      flushbarPosition: FlushbarPosition.TOP,
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(20),
      duration: Duration(seconds: 4),
      messageText: Container(
        height: 100,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -20,
              child: Container(
                margin: EdgeInsets.only(left: 18),
                child: imageIcon,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Image.asset('assets/Icon/bgElements.png'),
            ),
            Positioned(
              left: 68,
              top: 20,
              child: SizedBox(
                width: 300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      message,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: GestureDetector(
                onTap: () {
                  _flushBar?.dismiss();
                },
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    )..show(context);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            Expanded(
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          _showFlushBar(
                            _items[index].keys.first,
                            _items[index].values.first,
                            colorPalette[index],
                            imageIcon[index],
                          );
                        },
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 200,
                            height: 50,
                            child: Center(child: Text('Show Flushbar')),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
