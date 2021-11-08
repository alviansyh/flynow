import 'package:flutter/material.dart';
import 'package:flynow/shared/theme.dart';
import 'package:flynow/ui/pages/home_page.dart';
import 'package:flynow/ui/widgets/custom_bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(){
      return const HomePage();
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
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              const CustomBottomNavigation(
                imageUrl: 'assets/icon_booking.png',
              ),
              const CustomBottomNavigation(
                imageUrl: 'assets/icon_card.png',
              ),
              const CustomBottomNavigation(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          bottomNavigationBar(),
        ],
      ),
    );
  }
}
