import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            appBarLeadingAndActionTextStyle('Edit'),
            const Text(
              'Flutter 1st UI',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            appBarLeadingAndActionTextStyle('Done'),
          ],
        ),
      ),
    );
  }

  Text appBarLeadingAndActionTextStyle(String name) {
    return Text(
      name,
      style: const TextStyle(
        color: Color(0xff3effff),
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
    );
  }
}
