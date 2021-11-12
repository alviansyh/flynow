import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Setting Page',
        style: blackTextStyle,
      ),
    );
  }
}
