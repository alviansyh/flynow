import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Wallet Page',
        style: blackTextStyle,
      ),
    );
  }
}
