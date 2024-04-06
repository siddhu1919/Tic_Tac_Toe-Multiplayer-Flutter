import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/responsive/responsive.dart';
import 'package:tictactoe_multiplayer/screens/create_room.dart';
import 'package:tictactoe_multiplayer/screens/join_room.dart';
import 'package:tictactoe_multiplayer/utils/colors.dart';
import 'package:tictactoe_multiplayer/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoom.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Responsive(
            child: CustomButton(
              onTap: () => createRoom(context),
              text: "Create Room",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Responsive(
            child: CustomButton(
              onTap: () => joinRoom(context),
              text: "Join Room",
            ),
          ),
        ],
      ),
    );
  }
}
