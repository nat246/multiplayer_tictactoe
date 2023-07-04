import 'package:flutter/material.dart';
import 'package:multiplayer_tictactoe/responsive/responsive.dart';
import 'package:multiplayer_tictactoe/widgets/custom_button.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Responsive(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(onTap: () {}, text: 'Create Room'),
              const SizedBox(height: 20,),
              CustomButton(onTap: () {}, text: 'Join Room'),
            ],
          ),
        ),
      ),
    );
  }
}
