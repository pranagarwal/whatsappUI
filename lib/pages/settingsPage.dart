import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/settings_menu.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF128C7E),
        elevation: 0,
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.asset(
                        'images/img2.webp',
                        height: 80,
                        width: 65,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pranshu",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Urgent calls only",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      CupertinoIcons.qrcode,
                      size: 25,
                      color: Color(0xFF128C7E),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              settingsMenu(
                description: "Security notifications, change number",
                title: "Account",
                icon: Icons.key_outlined,
              ),
              SizedBox(
                height: 8,
              ),
              settingsMenu(
                  icon: Icons.face,
                  title: "Avatar",
                  description: "Create, edit, profile photo"),
              SizedBox(
                height: 8,
              ),
              settingsMenu(
                  icon: Icons.lock,
                  title: "Privacy",
                  description: "Block contacts, disappearing messages"),
              SizedBox(
                height: 8,
              ),
              settingsMenu(
                  icon: Icons.chat,
                  title: "Chats",
                  description: "Theme, wallpapers, chat history"),
              SizedBox(
                height: 8,
              ),
              settingsMenu(
                  icon: Icons.notifications,
                  title: "Notifications",
                  description: "Message, group & call tones"),
              SizedBox(
                height: 8,
              ),
              settingsMenu(
                  icon: Icons.data_saver_off,
                  title: "Storage and data",
                  description: "Network usage, auto-download"),
              SizedBox(
                height: 8,
              ),
              settingsMenu(
                  icon: Icons.language,
                  title: "App language",
                  description: "English (phone's language)"),
              SizedBox(
                height: 8,
              ),
              settingsMenu(
                  icon: Icons.help_outline,
                  title: "Help",
                  description: "Help center, contact us, privacy policy"),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(
                      Icons.people,
                      color: Colors.black38,
                      size: 23,
                    ),
                  ),
                  Text(
                    "Invite a friend",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "from",
                        style: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.infinite,
                            color: Colors.black,
                          ),
                          Text(
                            " Meta",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
