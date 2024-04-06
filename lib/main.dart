import 'package:flutter/material.dart';
import 'package:tictactoe_multiplayer/screens/create_room.dart';
import 'package:tictactoe_multiplayer/screens/join_room.dart';
import 'package:tictactoe_multiplayer/screens/main_menu_screen.dart';
import 'package:tictactoe_multiplayer/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgcolor,
      ),
      title: 'TictacToe',
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoom.routeName: (context) => const JoinRoom(),
        CreateRoom.routeName: (context) => const CreateRoom(),
      },
      // home: const MainMenuScreen(),
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
