import 'package:flutter/material.dart';
import 'package:flutter_ui_3/model/blog_type.dart';
import '../../../constants.dart';

class BlogTypes extends StatelessWidget {
  const BlogTypes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: defaultMargin * 18,
          bottom: defaultMargin * 4,
          left: defaultMargin * 2),
      width: double.infinity,
      decoration:
          const BoxDecoration(color: Colors.white, borderRadius: borderRadius),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var blogType in blogTypes) blogTypeItem(blogType),
          ],
        ),
      ),
    );
  }

  Container blogTypeItem(BlogType blogType) {
    return Container(
      margin: const EdgeInsets.only(right: defaultMargin),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              blogType.blogTypeImage,
              height: 200,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 200,
            width: 150,
            decoration: const BoxDecoration(
                color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(40))),
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  blogType.blogTypeName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  '${blogType.totalPost} Posts',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
