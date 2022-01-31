import 'package:flutter/material.dart';
import 'package:flutter_ui_3/component/appBar.dart';
import 'package:flutter_ui_3/screens/home/component/blog_type.dart';
import 'package:flutter_ui_3/screens/home/component/bolg_post.dart';

import '../../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: primaryColor,
        appBar: buildAppBar(
          'Blog',
          context,
          firstPageAppBar: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [BlogTypes(), Blog()],
          ),
        ));
  }
}
