import 'package:flutter/material.dart';
import 'package:mock_data/mock_data.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              for (int i = 1; i < 13; i++)
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'ChatsPage');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            "images/img$i.webp",
                            height: 65,
                            width: 60,
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
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Good Morning. Hope you are doing Well.",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black54,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Yesterday",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            if (i % 2 == 0)
                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
