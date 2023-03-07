import 'package:flutter/material.dart';
import 'package:whatsapp_ui/pages/ChatsPage.dart';
import 'package:whatsapp_ui/pages/home_page.dart';
import 'package:whatsapp_ui/pages/settingsPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF128C7E),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => const HomePage(),
        "/settingsPage": (context) => const SettingsPage(),
        "ChatsPage": (context) => const ChatsPage(),
      },
    );
  }
}
