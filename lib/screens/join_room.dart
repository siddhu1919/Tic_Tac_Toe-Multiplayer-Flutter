import 'package:flutter/material.dart';

class JoinRoom extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoom({super.key});

  @override
  State<JoinRoom> createState() => _JoinRoomState();
}

class _JoinRoomState extends State<JoinRoom> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("join Room"),
      ),
    );
  }
}
