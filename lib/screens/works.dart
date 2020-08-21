import 'package:flutter/material.dart';

class Works extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Center(
          child: Text(
            "My Works",
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Card(),
            Card(),
            Card(),
          ],
        )
      ],
    );
  }
}
