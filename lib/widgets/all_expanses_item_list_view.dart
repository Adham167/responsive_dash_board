import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expanses_item_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpansesItemListView extends StatefulWidget {
  const AllExpansesItemListView({super.key});

  @override
  State<AllExpansesItemListView> createState() =>
      _AllExpansesItemListViewState();
}

class _AllExpansesItemListViewState extends State<AllExpansesItemListView> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20,129",
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20,129",
    ),
  ];
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
          items.asMap().entries.map((e) {
            int index = e.key;
            var item = e.value;
            return Expanded(
              child: GestureDetector(
                onTap:
                    () => setState(() {
                      isSelected = index;
                    }),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: index == 1 ? 12.0 : 0,
                  ),
                  child:
                      isSelected != index
                          ? AllExpensesItem(allExpensesItemModel: item)
                          : AllExpensesItemSelected(allExpensesItemModel: item),
                ),
              ),
            );
          }).toList(),
    );
  }
}

class AllExpensesItemSelected extends StatelessWidget {
  const AllExpensesItemSelected({
    super.key,
    required this.allExpensesItemModel,
  });
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: ShapeDecoration(
        color: Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(width: 1, color: Color(0xFFF1F1F1)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeaderSelected(image: allExpensesItemModel.image),
          SizedBox(height: 16),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Color(0xFFFFFFFF)),
          ),
          SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14.copyWith(color: Color(0xFFFAFAFA)),
          ),
          SizedBox(height: 16),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Color(0xFFFFFFFF)),
          ),
        ],
      ),
    );
  }
}
