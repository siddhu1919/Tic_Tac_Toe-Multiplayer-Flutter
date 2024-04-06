// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/responsive/responsive.dart';
import 'package:tictactoe_multiplayer/widgets/custom_button.dart';
import 'package:tictactoe_multiplayer/widgets/custom_text.dart';
import 'package:tictactoe_multiplayer/widgets/custom_textfield.dart';

class CreateRoom extends StatefulWidget {
  static String routeName = '/create-room';

  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomText(shadows: [
                Shadow(
                  blurRadius: 40,
                  color: Colors.blue,
                )
              ], text: "Create Room", fontSize: 70),
              SizedBox(
                height: Size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: "Enter room name"),
              SizedBox(
                height: Size.height * 0.03,
              ),
              CustomButton(onTap: () {}, text: "Create")
            ],
          ),
        ),
      ),
    );
  }
}
