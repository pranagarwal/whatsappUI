import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mock_data/mock_data.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Color(0xFF128C7E),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(
                      Icons.link,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Create call link",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Share a link for your WhatsApp call",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Recent",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            for (int i = 7; i < 12; i++)
              InkWell(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.only(top: 12, right: 8, bottom: 15),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "images/img$i.webp",
                          height: 45,
                          width: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              mockName(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.call_made_outlined,
                                  size: 18,
                                  color: Color(0xFF128C7E),
                                ),
                                Text(
                                  " (2) November 11, 17:35",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black54,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          i % 2 == 0
                              ? Icon(
                                  Icons.call,
                                  size: 20,
                                  color: Color(0xFF128C7E),
                                )
                              : Icon(
                                  CupertinoIcons.videocam_fill,
                                  size: 18,
                                  color: Color(0xFF128C7E),
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            Divider(),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.black54,
                  size: 15,
                ),
                Text(
                  " Your personal calls are ",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black38,
                  ),
                ),
                Text(
                  "end-to-end encrypted",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF128C7E),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
