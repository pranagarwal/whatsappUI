import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/chat_sample.dart';
import '../widgets/ChatBottomBar.dart';
import '../widgets/CustomAppBar.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: CustomAppBar(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/background.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Text(
                    "October 4, 2022",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.symmetric(vertical: 5),
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    color: Color(0xFFFFF3C2),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Text(
                    "🔒 Messages and calls are end-to-end encrypted. No one outside of this chat, not even WhatsApp, can read or listen to them. Tap to learn more.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black54,
                      letterSpacing: 0.2,
                    ),
                  ),
                ),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: BottomChatBar(),
    );
  }
}
