import 'package:flutter/material.dart';
import 'package:testlogic/Logic/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          widget().appBar(),
          Expanded(child: widget().navigate(context, 'food', child: widget().container('food'))),
          widget().bottomNavigationBar(),
        ],
      ),
    );
  }
}
