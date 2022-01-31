import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class CustomDeatilsBottomBar extends StatelessWidget {
  const CustomDeatilsBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: kDefaultPadding / 2,
        right: kDefaultPadding,
        left: kDefaultPadding,
        child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding / 1.5, vertical: kDefaultPadding / 4),
          decoration: BoxDecoration(
              color: kSecondaryColor, borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/chat.svg"),
                    const SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    const Text(
                      "Chat",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/shopping-bag.svg",
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    const Text(
                      "Add to Cart",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
