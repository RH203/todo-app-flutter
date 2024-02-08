import 'package:flutter/material.dart';

class TextFieldUser extends StatefulWidget {
  const TextFieldUser(
      {super.key,
      required this.prefixIcons,
      required this.hintTexts,
      required this.controller});

  final Widget prefixIcons;
  final String hintTexts;
  final TextEditingController controller;

  @override
  State<TextFieldUser> createState() => _TextFieldUserState();
}

class _TextFieldUserState extends State<TextFieldUser> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hintTexts,
          prefixIcon: widget.prefixIcons,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
