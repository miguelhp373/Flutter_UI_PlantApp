import 'package:flutter/material.dart';
import 'package:flutter_ui_plantapp/components/home/featured_plant_card.dart';

class FeaturedCarouselPlants extends StatelessWidget {
  const FeaturedCarouselPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            imageDisplay: "assets/images/bottom_img_1.png",
            pressCard: () {},
          ),
          FeaturedPlantCard(
            imageDisplay: "assets/images/bottom_img_2.png",
            pressCard: () {},
          ),
        ],
      ),
    );
  }
}
