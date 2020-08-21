import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {
  final List<NavItem> items;
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;
  final onTap;

  const NavigationWidget(
      {Key key,
      this.items,
      this.selectedIndex,
      this.onTap,
      this.onItemSelected})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items.map((item) {
            var index = items.indexOf(item);
            return InkWell(
                splashColor: Colors.grey[700],
                onTap: () => onItemSelected(index),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: _BuildNavItem(
                      title: item.title, isSelected: index == selectedIndex),
                ));
          }).toList()),
    );
  }
}

class _BuildNavItem extends StatelessWidget {
  final bool isSelected;
  final String title;

  const _BuildNavItem({Key key, this.isSelected, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("$title",
              style:
                  Theme.of(context).textTheme.headline6.copyWith(fontSize: 16)),
          AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 400),
            height: isSelected ? 0 : 5,
          ),
          AnimatedContainer(
            curve: Curves.easeOut,
            height: isSelected ? 5 : 0,
            width: isSelected ? 16 : 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).accentColor),
            duration: Duration(milliseconds: 400),
          )
        ],
      ),
    );
  }
}

class NavItem {
  final String title;
  final Color activeColor;

  NavItem({
    @required this.title,
    this.activeColor = Colors.yellowAccent,
  }) {
    assert(title != null);
  }
}
