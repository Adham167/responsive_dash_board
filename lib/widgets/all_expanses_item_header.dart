import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpansesItemHeader extends StatelessWidget {
  const AllExpansesItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Center(child: SvgPicture.asset(image)),
        ),
        Spacer(),
        Transform.rotate(
          angle: 3.14,
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ],
    );
  }
}

class AllExpansesItemHeaderSelected extends StatelessWidget {
  const AllExpansesItemHeaderSelected({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: ShapeDecoration(
            color: Color(0xFFFAFAFA).withOpacity(0.1),
            shape: OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(image, color: Color(0xFFFFFFFF)),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: 3.14,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ],
    );
  }
}
