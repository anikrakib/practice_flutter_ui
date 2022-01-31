import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_ui_3/screens/profile/component/user_post.dart';
import 'package:flutter_ui_3/screens/profile/profile_page.dart';
import 'package:readmore/readmore.dart';
import '../../../constants.dart';

class Blog extends StatelessWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        blogItemWidget(blogColor1, context),
        blogItemWidget2(blogColor2, context),
        blogItemWidget(blogColor3, context),
        blogItemWidget2(blogColor4, context),
        blogItemWidget(blogColor5, context),
        blogItemWidget2(blogColor6, context),
      ],
    );
  }

  Padding blogItemWidget(Color background, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultMargin * 2),
      child: Container(
        margin: const EdgeInsets.only(left: defaultMargin * 2),
        width: double.infinity,
        padding: const EdgeInsets.only(
            left: defaultMargin * 5,
            top: defaultMargin * 3,
            bottom: defaultMargin * 3,
            right: defaultMargin),
        decoration: BoxDecoration(
            color: background,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(80), topLeft: Radius.circular(80))),
        child: (Column(
          children: [
            blogHeaderPart(context),
            Container(
              margin: const EdgeInsets.only(
                  top: defaultMargin, bottom: defaultMargin),
              child: const ReadMoreText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                trimCollapsedText: "Read More",
                trimExpandedText: "Read Less",
                trimLength: 210,
                lessStyle: readMoreTextStyle,
                moreStyle: readMoreTextStyle,
                style: TextStyle(
                  color: Colors.grey,
                  wordSpacing: 1,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: defaultMargin * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white38,
                        ),
                        SizedBox(
                          width: defaultMargin / 2,
                        ),
                        Text(
                          "View",
                          style: textStyle,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: defaultMargin * 2,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.supervisor_account,
                          color: Colors.white38,
                        ),
                        SizedBox(
                          width: defaultMargin / 2,
                        ),
                        Text(
                          "115",
                          style: textStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  Padding blogItemWidget2(Color background, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultMargin * 2),
      child: Container(
        margin: const EdgeInsets.only(right: defaultMargin * 2),
        width: double.infinity,
        padding: const EdgeInsets.only(
            left: defaultMargin * 5,
            top: defaultMargin * 3,
            bottom: defaultMargin * 3,
            right: defaultMargin),
        decoration: BoxDecoration(
            color: background,
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(80),
                topRight: Radius.circular(80))),
        child: (Column(
          children: [
            blogHeaderPart(context),
            Container(
              margin: const EdgeInsets.only(
                  top: defaultMargin, bottom: defaultMargin),
              child: const ReadMoreText(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                trimCollapsedText: "Read More",
                trimExpandedText: "Read Less",
                trimLength: 210,
                lessStyle: readMoreTextStyle,
                moreStyle: readMoreTextStyle,
                style: TextStyle(
                  color: Colors.grey,
                  wordSpacing: 1,
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: defaultMargin * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.transparent,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white38,
                        ),
                        SizedBox(
                          width: defaultMargin / 2,
                        ),
                        Text(
                          "View",
                          style: textStyle,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: defaultMargin * 2,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.supervisor_account,
                          color: Colors.white38,
                        ),
                        SizedBox(
                          width: defaultMargin / 2,
                        ),
                        Text(
                          "115",
                          style: textStyle,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }

  Row blogHeaderPart(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundImage: NetworkImage(profileImage),
          radius: 22,
        ),
        const SizedBox(
          width: defaultMargin * 3,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                debugPrint("pressed");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: const Text(
                "Anik Rakib",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: defaultMargin / 3,
            ),
            const Text(
              "8 Nov",
              style: textStyle,
            )
          ],
        ),
        const Spacer(),
        Transform.rotate(
          angle: 90 * pi / 180,
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 25,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.cubicTo(0, size.height * 0.0050000, 0, size.height * 0.2500000,
        size.width * 0.2000000, size.height * 0.2500000);
    path0.quadraticBezierTo(size.width * 0.4000000, size.height * 0.2500000,
        size.width, size.height * 0.2500000);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(size.width * 0.4000000, size.height,
        size.width * 0.2000000, size.height);
    path0.quadraticBezierTo(
        0, size.height * 1.0025000, 0, size.height * 0.7500000);
    path0.quadraticBezierTo(0, size.height * 0.5625000, 0, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
