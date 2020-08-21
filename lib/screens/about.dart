import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Text(
            "About me",
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
