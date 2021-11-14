import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flynow/cubit/page_cubit.dart';
import 'package:flynow/shared/theme.dart';
import 'package:flynow/ui/pages/home_page.dart';
import 'package:flynow/ui/pages/setting_page.dart';
import 'package:flynow/ui/pages/transaction_page.dart';
import 'package:flynow/ui/pages/wallet_page.dart';
import 'package:flynow/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPage();
        case 2:
          return const WalletPage();
        case 3:
          return const SettingPage();
        default:
          return const HomePage();
      }
    }

    Widget bottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            right: defaultMargin,
            left: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CustomBottomNavigation(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              const CustomBottomNavigation(
                index: 1,
                imageUrl: 'assets/icon_booking.png',
              ),
              const CustomBottomNavigation(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              const CustomBottomNavigation(
                index: 3,
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
