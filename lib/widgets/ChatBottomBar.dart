import 'package:flutter/material.dart';

class BottomChatBar extends StatelessWidget {
  const BottomChatBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.black45,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Message",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  width: 90,
                ),
                Icon(
                  Icons.attach_file,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.currency_rupee,
                  color: Colors.black45,
                ),
                Icon(
                  Icons.camera_alt,
                  color: Colors.black45,
                ),
              ],
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xFF128C7E),
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
