import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'flushbar.dart';
import 'select.dart';
import 'type.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    List<Item> items = [
      Item(size: Select.small, type: Type.success),
      Item(size: Select.big, type: Type.success),
      Item(size: Select.small, type: Type.info),
      Item(size: Select.big, type: Type.info),
      Item(size: Select.small, type: Type.error),
      Item(size: Select.big, type: Type.error),
      Item(size: Select.small, type: Type.warning),
      Item(size: Select.big, type: Type.warning),
    ];


    void _Showflushbar (size, type){
      Map<String, String> flushBar = FlushBar.FlushBarWithTitle(size, type);
      String message = flushBar['messages'] ?? '';
      String title = flushBar['titles'] ?? '';
      double sizeIcon = 16;
      if(size == Select.big) sizeIcon = 24;

      Flushbar(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        backgroundColor: Select.selectColor,
        borderRadius: BorderRadius.circular(30),
        borderWidth: 1,
        borderColor: Select.selectBorderColor,
        duration: const Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        titleText: Select.iconTitleSelect.isNotEmpty ? Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(Select.iconTitleSelect, width: sizeIcon, height: sizeIcon),
              const SizedBox(width: 8),
              Text(
                title,
                style: TextStyle(
                  fontWeight: Select.titleFontWeight,
                  fontSize: Select.titleFontSize,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ) : null,
        messageText: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: Select.withSizeBox),
            Expanded(
              child: Row(
                children: [
                  if (Select.iconTitleSelect.isEmpty)
                    Image.asset(Select.iconMessageSelect, width: sizeIcon, height: sizeIcon,),
                  if (Select.iconTitleSelect.isEmpty) const SizedBox(width: 8,),
                  Expanded(
                    child: Text(
                      message,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: Select.messageFontWeight,
                        fontSize: Select.messageFontSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ).show(context);
    }
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 80),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, index) {
                return ListTile(
                  title: Expanded(
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 100),
                      padding: EdgeInsets.zero,
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(items[index].type),
                        const SizedBox(width: 8,),
                        Text('(${items[index].size})'),
                      ],
                    ),),
                  ),
                  onTap: (){
                    _Showflushbar(items[index].size, items[index].type);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String size;
  final String type;

  Item({required this.size, required this.type});
}