import 'package:flutter/material.dart';
import 'package:flutter_ui_3/component/appBar.dart';
import 'package:flutter_ui_3/constants.dart';
import 'package:flutter_ui_3/screens/profile/component/user_post.dart';
import 'package:flutter_ui_3/screens/profile/component/profile_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: primaryColor,
        appBar: buildAppBar('Profile', context),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const ScrollPhysics(),
          child: Column(
            children: const [
              ProfileInfo(),
              // SizedBox(
              //   height: defaultMargin * 2,
              // ),
              UserPost()
            ],
          ),
        ));
  }
}
