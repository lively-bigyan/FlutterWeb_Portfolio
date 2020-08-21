import 'package:flutter/material.dart';
import 'package:portfolio/utils/text_form_field.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 800),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(blurRadius: 10, color: Colors.white10)]),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    CustomTextField(
                      attribute: "name",
                      label: "Name",
                    ),
                    CustomTextField(
                      attribute: "email",
                      label: "Email",
                    ),
                    CustomTextField(
                      attribute: "subject",
                      label: "Subject",
                    ),
                  ],
                ),
              ),
              SizedBox(width: 40),
              Expanded(
                child: CustomTextField(
                  attribute: "message",
                  label: "Message",
                  maxLines: 9,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          OutlineButton(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            hoverColor: Theme.of(context).accentColor,
            onPressed: () {},
            child: Text(
              "Submit",
              style: Theme.of(context).textTheme.headline6,
            ),
          )
        ],
      ),
    );
  }
}
