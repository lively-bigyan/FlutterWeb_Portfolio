import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/utils/widgets/navigation_items.dart';
import 'package:portfolio/screen_controller.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            child: Text("Bigyan Ghimire",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(fontWeight: FontWeight.w100)),
            onTap: () {
              ScreenController.to.navigateToHome();
            },
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Obx(
                () => NavigationWidget(
                  selectedIndex: ScreenController.to.selectedIndex,
                  onItemSelected: (index) =>
                      ScreenController.to.changeIndex(index),
                  items: [
                    NavItem(title: "Skills"),
                    NavItem(title: "Works"),
                    NavItem(title: "About"),
                    NavItem(title: "Contact"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
