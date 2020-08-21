import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:get/get.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        Text("KNOWLEDGE", style: Theme.of(context).textTheme.headline3),
        SizedBox(height: 20),
        Wrap(
          alignment: WrapAlignment.spaceEvenly,
          runSpacing: 40,
          children: [
            SkillsWidget(
              icon: FontAwesome.mobile,
              title: "UI/UX design",
              body: "",
            ),
            SkillsWidget(
              icon: FontAwesome.database,
              title: "Backend development experience",
              body:
                  "In my previous projects, I have worked to develop backend for mobile applications.",
            ),
            SkillsWidget(
              icon: Icons.ac_unit,
              title: "Mobile application development",
              body: "",
            ),
            SkillsWidget(
              icon: Icons.view_week,
              title: "Experience with agile",
              body:
                  "In previous projects, I have tried and implemented both Scrum and Kanban methodology thus I am adaptable to either one.",
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Skills", style: Theme.of(context).textTheme.headline6),
              Wrap(spacing: 20, children: [
                LanguageBar(label: "Flutter/ Dart", stars: 4.5),
                LanguageBar(label: "Laravel/PHP", stars: 3),
                LanguageBar(label: "Node js", stars: 2),
                LanguageBar(label: "Python", stars: 2),
                LanguageBar(label: "Sql", stars: 2),
                LanguageBar(label: "C programming", stars: 2)
              ]),
            ],
          ),
        ),
      ],
    );
  }
}

class SkillsWidget extends StatelessWidget {
  final String title;
  final String body;
  final icon;
  const SkillsWidget({Key key, this.title, this.body, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final color = Color(0xffEF8833);
    return Container(
      width: Get.width / 4,
      child: Column(children: [
        Row(
          children: [
            Icon(icon, color: color),
            SizedBox(width: 20),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: color, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 10),
        Text(
          body,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              .copyWith(color: Colors.grey[300]),
          textAlign: TextAlign.left,
        )
      ]),
    );
  }
}

class LanguageBar extends StatelessWidget {
  final label, stars;

  const LanguageBar({Key key, this.label, this.stars}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$label:   ", style: Theme.of(context).textTheme.subtitle1),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                Container(
                  height: 10,
                  width: Get.width / 4,
                  color: Colors.grey[800],
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    height: 10,
                    width: (stars / 5) * (Get.width / 4),
                    color: Colors.green,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
