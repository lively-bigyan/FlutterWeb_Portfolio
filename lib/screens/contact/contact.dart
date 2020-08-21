import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:portfolio/screens/contact/contact_form.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
            child: Text(
              "GET IN TOUCH",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          SizedBox(height: 40),
          Column(
            children: [
              Socials(),
              SizedBox(height: 40),
              ContactForm(),
            ],
          )
        ],
      );
    });
  }
}

class ContactInfo extends StatelessWidget {
  final icon, label, url, color;
  const ContactInfo({Key key, this.icon, this.label, this.url, this.color})
      : super(key: key);
  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print("failed");
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _launchURL(url),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.2),
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: color ?? Theme.of(context).accentColor,
              size: 30,
            ),
            SizedBox(width: 20),
            Text(label, style: Theme.of(context).textTheme.subtitle1)
          ],
        ),
      ),
    );
  }
}

class Socials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ContactInfo(
              icon: Icons.mail,
              label: "lively.bigyan@gmail.com",
              color: Colors.red[600],
              url: "https://mail.google.com/"),
          ContactInfo(
              icon: FontAwesome.twitter,
              color: Colors.blue,
              label: "@_bigyan_",
              url: "https://twitter.com/_bigyan_"),
          ContactInfo(
              icon: FontAwesome.github_circled,
              color: Colors.black,
              label: "lively-bigyan",
              url: "https://github.com/lively-bigyan"),
        ],
      ),
    );
  }
}
