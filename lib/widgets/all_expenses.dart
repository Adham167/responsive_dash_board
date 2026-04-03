import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_item_list_view.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpansesItemListView(),
        ],
      ),
    );
  }
}

class CustomBackGroundContainer extends StatelessWidget {
  const CustomBackGroundContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
