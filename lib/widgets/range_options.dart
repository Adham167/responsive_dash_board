import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Text("Monthly", style: AppStyles.styleMedium16),
            SizedBox(width: 16),
            Transform.rotate(
              angle: -1.571,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xFF064061),
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
