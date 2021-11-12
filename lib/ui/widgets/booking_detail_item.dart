import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color color;

  const BookingDetailItem({
    Key? key,
    required this.title,
    required this.valueText,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_outline_rounded,
            color: kPrimaryColor,
            size: 16,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            title,
            style: blackTextStyle,
          ),
          const Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
