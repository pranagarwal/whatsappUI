import 'package:flutter/material.dart';

class settingsMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  settingsMenu(
      {Key? key,
      required this.icon,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(),
          margin: EdgeInsets.symmetric(horizontal: 5),
          child: Icon(
            icon,
            color: Colors.black38,
            size: 23,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              description,
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
