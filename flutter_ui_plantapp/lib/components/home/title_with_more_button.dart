import 'package:flutter/material.dart';
import 'package:flutter_ui_plantapp/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    required this.titleText,
    required this.pressButton,
  }) : super(key: key);

  final String titleText;
  final Function pressButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          TitleWithCustomUnderline(textDisplay: titleText),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () => pressButton,
            child: const Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    required this.textDisplay,
  }) : super(key: key);

  final String textDisplay;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      // ignore: prefer_const_literals_to_create_immutables
      child: Stack(
        children: [
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              textDisplay,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: const EdgeInsets.only(left: kDefaultPadding / 4),
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
