import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  final int value;
  const Community({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Image.asset(
              "images/img18.webp",
              height: 180,
              width: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Introducing communities",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Easily organize your related groups and send announcements.",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Now, your communities, like neighborhoods or schools, can",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "have their own space.",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 15,
                letterSpacing: 0.3,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.70,
              decoration: BoxDecoration(
                color: Color(0xFF128C7E),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
                child: Text(
                  "Start your community",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
