import 'package:flutter/material.dart';
import 'package:flutter_ui_1/my_appbar.dart';
import 'package:flutter_ui_1/my_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  List<MyCard> countries = [
    MyCard(
      countryName: 'Bangladesh',
      imageUrl: 'assets/rainy.png',
      temparatureType: 'Rainy',
      temparature: 18,
      color1: const Color(0xffffca51),
      color2: const Color(0xffff7c03),
    ),
    MyCard(
      countryName: 'India',
      imageUrl: 'assets/cloudy_day.png',
      temparatureType: 'Cloudy Day',
      temparature: 25,
      color1: const Color(0xff2afdb7),
      color2: const Color(0xff08c893),
    ),
    MyCard(
      countryName: 'Pakistan',
      imageUrl: 'assets/cloudy.png',
      temparatureType: 'Cloudy',
      temparature: 11,
      color1: const Color(0xffc064dd),
      color2: const Color(0xff5d28fe),
    ),
    MyCard(
      countryName: 'USA',
      imageUrl: 'assets/cloudy.png',
      temparatureType: 'Cloudy',
      temparature: 11,
      color1: const Color(0xff5581f1),
      color2: const Color(0xff1254fc),
    ),
    MyCard(
      countryName: 'Bangladesh',
      imageUrl: 'assets/rainy.png',
      temparatureType: 'Rainy',
      temparature: 18,
      color1: const Color(0xffffca51),
      color2: const Color(0xffff7c03),
    ),
    MyCard(
      countryName: 'India',
      imageUrl: 'assets/cloudy_day.png',
      temparatureType: 'Cloudy Day',
      temparature: 25,
      color1: const Color(0xff2afdb7),
      color2: const Color(0xff08c893),
    ),
    MyCard(
      countryName: 'Pakistan',
      imageUrl: 'assets/cloudy.png',
      temparatureType: 'Cloudy',
      temparature: 11,
      color1: const Color(0xffc064dd),
      color2: const Color(0xff5d28fe),
    ),
    MyCard(
      countryName: 'USA',
      imageUrl: 'assets/cloudy.png',
      temparatureType: 'Cloudy',
      temparature: 11,
      color1: const Color(0xff5581f1),
      color2: const Color(0xff1254fc),
    )
  ];

  Widget getItem(int index) {
    return countries[index];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
          backgroundColor: const Color(0xff1ae7e5),
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff545567), Color(0xff2c2c38)],
              )),
              child: Column(
                children: [
                  const MyAppBar(),

                  // List view using without builder
                  Expanded(
                    child: ListView.builder(
                        itemCount: countries.length,
                        itemBuilder: (context, index) {
                          return countries[index];
                        }),
                  ),

                  // List view using without builder
                  /*Expanded(
                    child: ListView(
                      children: [...countries],
                    ),
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
