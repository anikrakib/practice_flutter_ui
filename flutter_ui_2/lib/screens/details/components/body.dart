import 'package:flutter/material.dart';
import 'package:flutter_ui_2/constants.dart';
import 'package:flutter_ui_2/models/product.dart';
import 'package:flutter_ui_2/screens/details/components/custom_details_bottom_bar.dart';
import 'package:flutter_ui_2/screens/details/components/product_image.dart';

class Body extends StatefulWidget {
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
          width: double.infinity,
          //height: double.infinity,
          margin: const EdgeInsets.only(bottom: kDefaultPadding * 4),
          padding: const EdgeInsets.all(kDefaultPadding),
          decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: ProductPoster(size: size, image: widget.product.image),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                colorDotMethod(
                  const Color(0xFF707070),
                  const Color(0xFF80989A),
                  false,
                  0,
                ),
                colorDotMethod(
                  const Color(0xFFF8611A),
                  const Color(0xFFFF5200),
                  false,
                  1,
                ),
                colorDotMethod(
                  const Color(0x3199F5FF),
                  kPrimaryColor,
                  false,
                  2,
                ),
              ],
            ),
            const SizedBox(
              height: kDefaultPadding,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                widget.product.title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.justify,
                //style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Text(
              '${widget.product.price}\$',
              style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
              child: Text(
                widget.product.description,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            const SizedBox(height: kDefaultPadding / 2),
          ])),
    );

    // return Stack(
    //   children: [
    //     SingleChildScrollView(
    //       child: Container(
    //           width: double.infinity,
    //           padding: const EdgeInsets.all(kDefaultPadding),
    //           decoration: const BoxDecoration(
    //               color: kBackgroundColor,
    //               borderRadius: BorderRadius.only(
    //                   bottomRight: Radius.circular(50),
    //                   bottomLeft: Radius.circular(50))),
    //           child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Center(
    //                   child: ProductPoster(
    //                       size: size, image: widget.product.image),
    //                 ),
    //                 Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     colorDotMethod(
    //                       const Color(0xFF707070),
    //                       const Color(0xFF80989A),
    //                       false,
    //                       0,
    //                     ),
    //                     colorDotMethod(
    //                       const Color(0xFFF8611A),
    //                       const Color(0xFFFF5200),
    //                       false,
    //                       1,
    //                     ),
    //                     colorDotMethod(
    //                       const Color(0x3199F5FF),
    //                       kPrimaryColor,
    //                       false,
    //                       2,
    //                     ),
    //                   ],
    //                 ),
    //                 const SizedBox(
    //                   height: kDefaultPadding,
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.symmetric(
    //                       vertical: kDefaultPadding / 2),
    //                   child: Text(
    //                     widget.product.title,
    //                     style: const TextStyle(
    //                         color: Colors.black,
    //                         fontSize: 16,
    //                         fontWeight: FontWeight.w600),
    //                     textDirection: TextDirection.ltr,
    //                     textAlign: TextAlign.justify,
    //                     //style: Theme.of(context).textTheme.headline6,
    //                   ),
    //                 ),
    //                 Text(
    //                   '${widget.product.price}\$',
    //                   style: const TextStyle(
    //                       color: kPrimaryColor,
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.w600),
    //                 ),
    //                 Padding(
    //                   padding: const EdgeInsets.symmetric(
    //                       vertical: kDefaultPadding / 2),
    //                   child: Text(
    //                     widget.product.description,
    //                     style: Theme.of(context).textTheme.bodyText2,
    //                   ),
    //                 ),
    //                 const SizedBox(height: kDefaultPadding / 2),
    //               ])),
    //     ),
    //     const CustomDeatilsBottomBar()
    //   ],
    // );
  }

  Widget colorDotMethod(
      Color fillColorBorder, Color fillColor, bool isSelected, int index) {
    return GestureDetector(
      onTap: () => changeIndex(index),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color:
                    selectedIndex == index ? fillColor : Colors.transparent)),
        height: 24,
        width: 24,
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: fillColor),
        ),
      ),
    );
  }

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
