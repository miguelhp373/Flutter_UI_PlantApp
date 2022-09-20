// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui_plantapp/components/details/images_and_icons.dart';
import 'package:flutter_ui_plantapp/components/details/icon_card_details.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_plantapp/components/details/title_and_price.dart';
import 'package:flutter_ui_plantapp/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(),
          TitleAndPrice(title: "Angelica", country: "Russia", price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    primary: kPrimaryColor,
                  ),
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 84,
                width: size.width / 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    primary: Colors.red.withOpacity(0),
                  ),
                  child: Text(
                    'Description',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2)
        ],
      ),
    );
  }
}
