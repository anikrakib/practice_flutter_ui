import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({Key? key, required this.size, required this.image})
      : super(key: key);
  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          height: size.width * 0.75,
          child: Stack(
            children: [
              Container(
                height: size.width * .7,
                width: size.width * .7,
                decoration: const BoxDecoration(
                    color: Colors.white, shape: BoxShape.circle),
              ),
              Positioned(
                  top: -10,
                  right: 0,
                  left: 0,
                  child: Image.asset(
                    image,
                    height: size.width * .75,
                    width: size.width * .75,
                    fit: BoxFit.cover,
                  ))
            ],
          ),
        )
      ],
    );
  }
}
