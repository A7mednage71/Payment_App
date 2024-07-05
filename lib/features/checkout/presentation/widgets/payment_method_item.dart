import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PymentMethodItem extends StatelessWidget {
  const PymentMethodItem({
    super.key,
    required this.isactive,
    required this.image,
  });
  final bool isactive;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 104,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          side: BorderSide(
            width: 2,
            color: isactive ? const Color(0xff34A853) : const Color(0xff808080),
          ),
        ),
        shadows: [
          BoxShadow(
            color: isactive ? const Color(0xff34A853) : Colors.white,
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Container(
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          color: Colors.white,
        ),
        child: Center(child: SvgPicture.asset(image)),
      ),
    );
  }
}
