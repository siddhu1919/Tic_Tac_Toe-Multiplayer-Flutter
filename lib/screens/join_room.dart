// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/responsive/responsive.dart';
import 'package:tictactoe_multiplayer/widgets/custom_button.dart';
import 'package:tictactoe_multiplayer/widgets/custom_text.dart';
import 'package:tictactoe_multiplayer/widgets/custom_textfield.dart';

class JoinRoom extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoom({super.key});

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIdController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _gameIdController.dispose();
  }

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
              ], text: "Join Room", fontSize: 70),
              SizedBox(
                height: Size.height * 0.08,
              ),
              CustomTextField(
                  controller: _nameController, hintText: "Enter your name"),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                  controller: _gameIdController, hintText: "Enter game ID"),
              SizedBox(
                height: Size.height * 0.03,
              ),
              CustomButton(onTap: () {}, text: "Join"),
            ],
          ),
        ),
      ),
    );
  }
}
