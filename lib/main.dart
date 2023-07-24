import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/HomeScreen.dart';
import 'package:whatsapp_clone/screens/SettingsPage.dart';
import 'package:whatsapp_clone/screens/widgets/chatPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Color(0xFF075E55),
        ),
        //shows transparent bootom sheet on chat page
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),
      ),
      routes: {
        "/": (context) => HomeSreen(),
        "settingsPage": (context) => SettingsPage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}
