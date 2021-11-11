import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';

class SeatItem extends StatelessWidget {
  // NOTE: 0 = Unavailable, 1 = Available, 2 = Selected
  final int status;
  const SeatItem({Key? key, this.status = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kUnavailableColor;
        case 1:
          return kSecondaryColor;
        case 2:
          return kPrimaryColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kUnavailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kPrimaryColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return const SizedBox();
        case 2:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(fontWeight: semiBold),
            ),
          );
        default:
          return const SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(defaultRadius),
        border: Border.all(color: borderColor(), width: 2),
      ),
      child: child(),
    );
  }
}
