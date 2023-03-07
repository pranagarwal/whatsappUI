import 'package:flutter/material.dart';
import 'package:mock_data/mock_data.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 5, top: 40),
        height: 100,
        width: double.infinity,
        color: Color(0xFF128C7E),
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                'images/img2.webp',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              mockName(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Spacer(),
            Icon(
              Icons.videocam_rounded,
              color: Colors.white,
              size: 27,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.call,
              color: Colors.white,
              size: 23,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
