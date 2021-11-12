import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Transaction Page',
        style: blackTextStyle,
      ),
    );
  }
}
