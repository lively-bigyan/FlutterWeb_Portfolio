import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/screen_controller.dart';
import 'package:portfolio/screens/contact/contact.dart';
import 'package:portfolio/utils/widgets/navigation_bar.dart';

import 'screens/about.dart';
import 'screens/home.dart';
import 'screens/skills.dart';
import 'screens/works.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> screens = [Skills(), Works(), About(), Contact()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<ScreenController>(
            init: ScreenController(),
            builder: (controller) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                      elevation: 2,
                      forceElevated: true,
                      backgroundColor: Colors.grey[900],
                      automaticallyImplyLeading: false,
                      title: NavigationBar(),
                      floating: true),
                  SliverFillRemaining(
                    child: (controller.selectedIndex == 4)
                        ? Home()
                        : screens.elementAt(controller.selectedIndex),
                  ),
                ],
              );
            }));
  }
}
