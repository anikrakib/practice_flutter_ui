import 'package:flutter/material.dart';
import 'package:flutter_ui_2/constants.dart';
import 'package:flutter_ui_2/models/product.dart';
import 'package:flutter_ui_2/screens/product/components/category_list.dart';
import 'package:flutter_ui_2/components/search_box.dart';
import 'package:flutter_ui_2/screens/product/components/product_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) => {},
          ),
          const CategoryList(),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    product: products[index],
                    itemIndex: index,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
