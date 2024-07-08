import 'package:flutter/material.dart';

class CustomSmallContainer extends StatelessWidget {
  const CustomSmallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: const ShapeDecoration(
        color: Color(0xffFFFFFF),
        shape: CircleBorder(),
      ),
    );
  }
}
