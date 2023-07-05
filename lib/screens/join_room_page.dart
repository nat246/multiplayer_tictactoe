import 'package:flutter/material.dart';
import 'package:multiplayer_tictactoe/responsive/responsive.dart';
import 'package:multiplayer_tictactoe/widgets/custom_button.dart';
import 'package:multiplayer_tictactoe/widgets/custom_text.dart';
import 'package:multiplayer_tictactoe/widgets/custom_textfield.dart';

class JoinRoomPage extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomPage({super.key});

  @override
  State<JoinRoomPage> createState() => _JoinRoomPageState();
}

class _JoinRoomPageState extends State<JoinRoomPage> {
  final TextEditingController _gameIdController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _gameIdController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomText(
                shadows: [
                  Shadow(
                    blurRadius: 40,
                    color: Colors.blue,
                  )
                ],
                text: 'Join Room',
                fontSize: 70,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextField(controller: _nameController, hintText: 'Enter your name'),
              const SizedBox(height: 20,),
              CustomTextField(controller: _gameIdController, hintText: 'Enter Game ID'),
              SizedBox(height: size.height * 0.045,),
              CustomButton(onTap: () {}, text: 'Join')
            ],
          ),
        ),
      ),
    );
  }
}
