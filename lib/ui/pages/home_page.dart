import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
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
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.8,
                margin: EdgeInsets.only(left: defaultMargin),
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/image_destination2.png',
                rating: 4.7,
                margin: EdgeInsets.only(left: defaultMargin),
              ),
              DestinationCard(
                name: 'Hill Heyo',
                city: 'Monaco',
                imageUrl: 'assets/image_destination3.png',
                rating: 4.8,
                margin: EdgeInsets.only(left: defaultMargin),
              ),
              DestinationCard(
                name: 'Menarra',
                city: 'Japan',
                imageUrl: 'assets/image_destination4.png',
                rating: 5.0,
                margin: EdgeInsets.only(left: defaultMargin),
              ),
              DestinationCard(
                name: 'Payung Teduh',
                city: 'Singapore',
                imageUrl: 'assets/image_destination5.png',
                rating: 4.8,
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                ),
              ),
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
            const DestinationTile(
              name: 'Danau Beratan',
              city: 'Singaraja',
              imageUrl: 'assets/image_destination6.png',
              rating: 4.5,
            ),
            const DestinationTile(
              name: 'Sydney Opera',
              city: 'Australia',
              imageUrl: 'assets/image_destination7.png',
              rating: 4.7,
            ),
            const DestinationTile(
              name: 'Roma',
              city: 'Italy',
              imageUrl: 'assets/image_destination8.png',
              rating: 4.8,
            ),
            const DestinationTile(
              name: 'Payung Teduh',
              city: 'Singapore',
              imageUrl: 'assets/image_destination9.png',
              rating: 4.5,
            ),
            const DestinationTile(
              name: 'Hill Hey',
              city: 'Monaco',
              imageUrl: 'assets/image_destination10.png',
              rating: 4.7,
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
