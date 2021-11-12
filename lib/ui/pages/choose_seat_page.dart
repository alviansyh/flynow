import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';
import 'package:flynow/ui/pages/checkout_page.dart';
import 'package:flynow/ui/widgets/custom_button.dart';
import 'package:flynow/ui/widgets/seat_item.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Text(
          'Select Your \nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // NOTE: AVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: kPrimaryColor),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            // NOTE: SELECTED
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: kPrimaryColor),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            // NOTE: UNAVAILABLE
            Container(
              width: 16,
              height: 16,
              margin: const EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                color: kUnavailableColor,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: kUnavailableColor),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            // NOTE: SEAT INDICATORS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // NOTE: ROW SEAT 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 1),
                const SeatItem(status: 1),
                Container(
                  width: 48,
                  height: 48,
                  margin: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '1',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 1),
                const SeatItem(status: 0),
              ],
            ),
            // NOTE: ROW SEAT 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 1),
                const SeatItem(status: 1),
                Container(
                  width: 48,
                  height: 48,
                  margin: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '2',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 1),
                const SeatItem(status: 0),
              ],
            ),
            // NOTE: ROW SEAT 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 1),
                const SeatItem(status: 1),
                Container(
                  width: 48,
                  height: 48,
                  margin: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '3',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 2),
                const SeatItem(status: 2),
              ],
            ),
            // NOTE: ROW SEAT 4
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 1),
                const SeatItem(status: 1),
                Container(
                  width: 48,
                  height: 48,
                  margin: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '4',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 1),
                const SeatItem(status: 1),
              ],
            ),
            // NOTE: ROW SEAT 5
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SeatItem(status: 1),
                const SeatItem(status: 1),
                Container(
                  width: 48,
                  height: 48,
                  margin: const EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '5',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                const SeatItem(status: 1),
                const SeatItem(status: 1),
              ],
            ),

            // NOTE: YOUR SEAT
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'C3, D3',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
            // NOTE: TOTAL
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: blueTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget checkOutButton() {
      return CustomButton(
        title: 'Continue to Checkout',
        margin: const EdgeInsets.only(
          top: 30,
          bottom: 46,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CheckoutPage(),
            ),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          checkOutButton(),
        ],
      ),
    );
  }
}
