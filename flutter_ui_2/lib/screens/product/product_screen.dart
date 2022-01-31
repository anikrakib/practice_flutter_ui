import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_2/constants.dart';
import 'package:flutter_ui_2/screens/product/components/body.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      title: const Text('Dashboard'),
      centerTitle: false,
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notification.svg"))
      ],
    );
  }
}
