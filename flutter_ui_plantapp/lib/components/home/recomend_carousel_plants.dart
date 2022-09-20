import 'package:flutter/material.dart';
import 'package:flutter_ui_plantapp/components/home/recomeded_plant_card.dart';
import 'package:flutter_ui_plantapp/screens/details/details_screen.dart';

class RecomendCarouselPlants extends StatelessWidget {
  const RecomendCarouselPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomededPlanCard(
            title: 'Samantha',
            country: 'Russia',
            price: 440.99,
            image: 'assets/images/image_1.png',
            pressCard: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomededPlanCard(
            title: 'Angelica',
            country: 'Russia',
            price: 593.99,
            image: 'assets/images/image_2.png',
            pressCard: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecomededPlanCard(
            title: 'Olga',
            country: 'Russia',
            price: 233.99,
            image: 'assets/images/image_3.png',
            pressCard: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
