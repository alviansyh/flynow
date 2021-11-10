import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';

class InterestItem extends StatelessWidget {
  final String item;
  const InterestItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.check_circle_outline_rounded,
            color: kPrimaryColor,
            size: 16,
          ),
          const SizedBox(
            width: 2,
          ),
          Text(
            item,
            style: blackTextStyle,
          )
        ],
      ),
    );
  }
}
