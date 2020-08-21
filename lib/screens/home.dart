import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:portfolio/screen_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: Get.height,
          width: Get.width,
          foregroundDecoration: BoxDecoration(color: Colors.black87),
          child: Image.asset("assets/bg.jpg", fit: BoxFit.fill),
        ),
        Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Spacer(),
              CircleAvatar(
                radius: 150,
                backgroundColor: Colors.grey[600],
                backgroundImage: AssetImage("assets/portfolio.jpg"),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "I'm ",
                            style: Theme.of(context).textTheme.headline4),
                        TextSpan(
                            text: "Bigyan",
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(color: Theme.of(context).accentColor))
                      ],
                    ),
                  ),
                  Text("Mobile application developer with flutter."),
                  Text("Feel Free to browse."),
                  Row(
                    children: [
                      OutlineButton(
                        hoverColor: Theme.of(context).accentColor,
                        child: Text("Download CV"),
                        onPressed: () {},
                      ),
                      SizedBox(width: 20),
                      OutlineButton(
                        hoverColor: Theme.of(context).accentColor,
                        child: Text("Contact"),
                        onPressed: () {
                          ScreenController.to.changeIndex(3);
                        },
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Spacer()
            ],
          ),
        ),
      ],
    );
  }
}
