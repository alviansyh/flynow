import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flynow/cubit/auth_cubit.dart';
import 'package:flynow/shared/theme.dart';
import 'package:flynow/ui/widgets/destination_card.dart';
import 'package:flynow/ui/widgets/destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                right: defaultMargin,
                left: defaultMargin,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, \n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where to fly today?',
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.155,
                    height: MediaQuery.of(context).size.height * 0.155,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profile.jpeg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                  city: 'Jakarta',
                  country: 'Indonesia',
                  imageUrl: 'assets/image_destination1.png',
                  rating: 4.0),
              DestinationCard(
                  city: 'Bandung',
                  country: 'Indonesia',
                  imageUrl: 'assets/image_destination2.png',
                  rating: 4.5),
              DestinationCard(
                  city: 'Yogjakarta',
                  country: 'Indonesia',
                  imageUrl: 'assets/image_destination3.png',
                  rating: 4.4),
              DestinationCard(
                  city: 'Malang',
                  country: 'Indonesia',
                  imageUrl: 'assets/image_destination4.png',
                  rating: 4.5),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const DestinationTile(
              city: 'Bali',
              country: 'Indonesia',
              imageUrl: 'assets/image_destination5.png',
              rating: 4.8,
            ),
            const DestinationTile(
              city: 'Singaraja',
              country: 'Indonesia',
              imageUrl: 'assets/image_destination6.png',
              rating: 4.6,
            ),
            const DestinationTile(
              city: 'Sydney',
              country: 'Australia',
              imageUrl: 'assets/image_destination7.png',
              rating: 4.4,
            ),
            const DestinationTile(
              city: 'Roma',
              country: 'Italy',
              imageUrl: 'assets/image_destination8.png',
              rating: 4.4,
            ),
            const DestinationTile(
              city: 'Gardens By The Bay',
              country: 'Singapore',
              imageUrl: 'assets/image_destination9.png',
              rating: 4.7,
            ),
            const DestinationTile(
              city: 'Hill Hey',
              country: 'Monaco',
              imageUrl: 'assets/image_destination10.png',
              rating: 4.3,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
