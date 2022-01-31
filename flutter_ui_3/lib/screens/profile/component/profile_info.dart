import 'package:flutter/material.dart';
import 'package:flutter_ui_3/constants.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: defaultMargin * 3, bottom: defaultMargin * 4),
      width: double.infinity,
      decoration:
          const BoxDecoration(color: Colors.white, borderRadius: borderRadius),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(profileImage),
              radius: 30,
            ),
            const SizedBox(
              height: defaultMargin * 1.5,
            ),
            const Text(
              "Anik Rakib",
              style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: primaryColor,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    "Dhaka, Bangladesh",
                    style: textStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: defaultMargin * 1.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                profileBottomPart('Posts', 977),
                profileBottomPart('Followers', 945000),
                profileBottomPart('Following', 127),
              ],
            )
          ],
        ),
      ),
    );
  }

  MaterialButton profileBottomPart(String type, int value) {
    return MaterialButton(
      onPressed: () {},
      child: Column(
        children: [
          Text(
            '$value',
            style: const TextStyle(
                color: primaryTextColor,
                fontSize: 16,
                fontWeight: FontWeight.w800),
          ),
          Text(
            type,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
