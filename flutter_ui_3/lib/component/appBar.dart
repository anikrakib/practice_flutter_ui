import 'package:flutter/material.dart';
import '../constants.dart';

AppBar buildAppBar(String name, BuildContext context,
    {bool firstPageAppBar = false}) {
  return AppBar(
    backgroundColor: appBarBackgroundColor,
    elevation: 0,
    shape: const RoundedRectangleBorder(borderRadius: borderRadius),
    leading: Visibility(
      visible: !firstPageAppBar,
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          color: primaryColor,
        ),
      ),
    ),
    actions: const [
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Icon(
          Icons.search,
          color: primaryColor,
        ),
      )
    ],
    flexibleSpace: FlexibleSpaceBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          name,
          style: const TextStyle(
              color: primaryTextColor,
              fontSize: 40,
              fontWeight: FontWeight.w900),
        ),
      ),
      centerTitle: false,
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(),
    ),
  );
}
