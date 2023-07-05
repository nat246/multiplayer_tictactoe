import 'package:flutter/material.dart';
import 'package:multiplayer_tictactoe/screens/create_room_page.dart';
import 'package:multiplayer_tictactoe/screens/join_room_page.dart';
import 'package:multiplayer_tictactoe/screens/main_menu_page.dart';
import 'package:multiplayer_tictactoe/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenuPage.routeName: (context) => const MainMenuPage(),
        JoinRoomPage.routeName: (context) => const JoinRoomPage(),
        CreateRoomPage.routeName: (context) => const CreateRoomPage(),
      },
      initialRoute: MainMenuPage.routeName,
      home: const MainMenuPage(),
    );
  }
}