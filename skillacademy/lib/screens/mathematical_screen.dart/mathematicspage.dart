import 'package:flutter/material.dart';
import 'package:skillacademy/export/export.dart';

class Mathematicspage extends StatefulWidget {
  const Mathematicspage({super.key});

  @override
  State<Mathematicspage> createState() => _MathematicspageState();
}

class _MathematicspageState extends State<Mathematicspage> {
  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.sizeOf(context).height;
    final sizeWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          CustomContainer(
            sizeWidth: sizeWidth,
            sizeHeight: sizeHeight,
            heightNeeded: 10,
            widthNeeded: 1,
            color: Colors.amber,
            child: Row(
              children: [],
            ),
          ),
        ],
      )),
    );
  }
}
