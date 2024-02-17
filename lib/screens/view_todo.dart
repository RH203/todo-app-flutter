import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewTodo extends StatelessWidget {
  const ViewTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 235, 229, 229),
        title: Text(
          "Edit todo",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
        ),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.save,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
      ),
    );
  }
}
