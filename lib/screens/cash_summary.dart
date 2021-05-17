import 'package:expenses_management/models/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';
import '../widgets/transactions/transaction_list.dart';
import '../widgets/cash/cash_card.dart';

class CashSummary extends StatelessWidget {
  static const routeName = 'cash-summary';

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.transparent,
      height: _height,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: _height / 4.0,
            width: _width,
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            child: CashCard(),
          ),
          Divider(
            color: AppColors.backgroundFadedColor,
            thickness: 0.7,
          ),
          SingleChildScrollView(
            physics: PageScrollPhysics(),
            child: Container(
              height: _height * 3 / 4.0 - 66,
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                ),
              ),
              width: double.infinity,
              child: TransactionsList(TransactionMode.Cash),
            ),
          ),
        ],
      ),
    );
  }
}
