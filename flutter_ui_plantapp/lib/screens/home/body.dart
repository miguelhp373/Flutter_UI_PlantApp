// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_ui_plantapp/components/home/featured_carousel_plants.dart';
import 'package:flutter_ui_plantapp/components/home/header_with_searchbox.dart';
import 'package:flutter_ui_plantapp/components/home/recomend_carousel_plants.dart';
import 'package:flutter_ui_plantapp/components/home/title_with_more_button.dart';

import 'package:flutter_ui_plantapp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //it will provie us total height and widht of our screen
    Size size = MediaQuery.of(context).size;
    //it enabled scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            titleText: "Recomended",
            pressButton: () {},
          ),
          const RecomendCarouselPlants(),
          TitleWithMoreButton(
            titleText: "Featured Plants",
            pressButton: () {},
          ),
          const FeaturedCarouselPlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
