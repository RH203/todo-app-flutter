import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('assets/icon/homescreen-icon.jpg'),
            ),
            Text(
              "Stay organized with TaskMaster.",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                  color: Theme.of(context).colorScheme.primary),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const TodoScreen()),
                );
              },
              child: Text(
                "Next",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontFamily: GoogleFonts.montserrat().fontFamily,
                    color: Theme.of(context).colorScheme.primary),
              ),
            )
          ],
        ),
      ),
    );
  }
}
