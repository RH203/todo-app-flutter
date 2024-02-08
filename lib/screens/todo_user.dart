import 'package:flutter/material.dart';

class TodoUser extends StatefulWidget {
  const TodoUser({super.key});

  @override
  State<TodoUser> createState() => _TodoUserState();
}

class _TodoUserState extends State<TodoUser> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Todo user"),
    );
  }
}
