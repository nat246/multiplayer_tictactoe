import 'package:flutter/material.dart';
import 'package:multiplayer_tictactoe/responsive/responsive.dart';
import 'package:multiplayer_tictactoe/widgets/custom_button.dart';
import 'package:multiplayer_tictactoe/widgets/custom_text.dart';
import 'package:multiplayer_tictactoe/widgets/custom_textfield.dart';

class CreateRoomPage extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoomPage({super.key});

  @override
  State<CreateRoomPage> createState() => _CreateRoomPageState();
}

class _CreateRoomPageState extends State<CreateRoomPage> {
  final TextEditingController _nameController = TextEditingController();

  // prevents memory leak
  @override
  void dispose() {
    super.dispose();
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
                text: 'Create Room',
                fontSize: 70,
              ),
              SizedBox(height: size.height * 0.08),
              CustomTextField(controller: _nameController, hintText: 'Enter your name'),
              SizedBox(height: size.height * 0.045,),
              CustomButton(onTap: () {}, text: 'Create')
            ],
          ),
        ),
      ),
    );
  }
}
