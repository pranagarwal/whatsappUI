import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/settingsPage.dart';

import '../widgets/calls_widget.dart';
import '../widgets/chats_widget.dart';
import '../widgets/community.dart';
import '../widgets/status_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          // CUSTOM HEIGHT TO APPBAR
          preferredSize: const Size.fromHeight(80),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 25),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15, left: 10),
                child: Icon(
                  Icons.camera_alt_outlined,
                  size: 28,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 12, right: 15, left: 10),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  if (selected == 6) {
                    Navigator.pushNamed(context, '/settingsPage');
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New group",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New broadcast",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked Devices",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred messages       ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Payments",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const PopupMenuItem(
                    value: 6,
                    child: Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xFF128C7E),
              child: TabBar(
                onTap: (tabIndex) {
                  setState(() {
                    currentIndex = tabIndex;
                  });
                },
                labelColor: Colors.white,
                isScrollable: true,
                indicatorColor: Colors.white,
                labelStyle: const TextStyle(
                  fontSize: 15,
                ),
                tabs: [
                  Container(
                    // TAB 1
                    width: 25,
                    child: Tab(
                      icon: Icon(Icons.groups_rounded),
                    ),
                  ),
                  Container(
                    // TAB 2
                    width: 90,
                    child: const Tab(
                      child: Text("Chats"),
                    ),
                  ),
                  Container(
                    // TAB 3
                    width: 60,
                    child: const Tab(
                      child: Text("Status"),
                    ),
                  ),
                  Container(
                    // TAB 4
                    width: 60,
                    child: Tab(
                      child: Text("Calls"),
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  // TAB 1
                  Community(
                    value: 1,
                  ),
                  // TAB 2
                  ChatsWidget(),
                  // TAB 3
                  StatusWidget(),
                  // TAB 4
                  CallsScreen(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF128C7E),
          onPressed: () {},
          child: fabIconList[currentIndex],
        ),
      ),
    );
  }

  List<Icon> fabIconList = [
    Icon(Icons.message),
    Icon(Icons.message),
    Icon(Icons.camera_alt),
    Icon(Icons.add_call),
  ];
}
