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
        Expanded(child: SizedBox()),
        Transform.rotate(
          angle: 3.14,
          child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ],
    );
  }
}
