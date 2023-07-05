import 'package:flutter/material.dart';
import 'package:multiplayer_tictactoe/responsive/responsive.dart';
import 'package:multiplayer_tictactoe/screens/create_room_page.dart';
import 'package:multiplayer_tictactoe/screens/join_room_page.dart';
import 'package:multiplayer_tictactoe/widgets/custom_button.dart';

class MainMenuPage extends StatelessWidget {
  static String routeName = '/main-menu';
  
  const MainMenuPage({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomPage.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomPage.routeName);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(onTap: () => createRoom(context), text: 'Create Room'),
            const SizedBox(height: 20,),
            CustomButton(onTap: () => joinRoom(context), text: 'Join Room'),
          ],
        ),
      ),
    );
  }
}
