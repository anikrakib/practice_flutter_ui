import 'package:flutter/material.dart';

const appBarBackgroundColor = Color(0xfff4f6fa);
const primaryColor = Color(0xff1e0e2c);
const primaryTextColor = Color(0xff241432);
const postTitleTxtColor = Color(0xff8e839c);
const blogColor1 = Color(0xff4b2a77);
const blogColor2 = Color(0xff983b99);
const blogColor3 = Color(0xff3b995c);
const blogColor4 = Color(0xff99653b);
const blogColor5 = Color(0xff993b63);
const blogColor6 = Color(0xff3b6c99);

const readMoreTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 16,
);
const borderRadius = BorderRadius.only(bottomLeft: Radius.circular(80));
const textStyle = TextStyle(color: Colors.grey, fontWeight: FontWeight.w500);

const defaultMargin = 10.0;
const profileImage = "https://avatars.githubusercontent.com/u/31993478?v=4";

CustomScrollView customColapssingAppBar() {
  return CustomScrollView(
    slivers: [
      const SliverAppBar(
        backgroundColor: Colors.amber,
        expandedHeight: 120,
        pinned: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80))),
        leading: Icon(Icons.arrow_back),
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Profile'),
          centerTitle: false,
        ),
      ),
      SliverFillRemaining(
        child: Container(),
      )
    ],
  );
}
