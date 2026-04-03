import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(flex: 2, child: AllExpensessAndQuickInvoiceSection()),
          Expanded(child: MyCard()),
        ],
      ),
    );
  }
}
