import 'package:flutter/material.dart';
import 'package:todo_app/screens/current_todo.dart';
import 'package:todo_app/screens/add_todo.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/screens/homescreen.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[CurrentTodo(), AddTodo()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(
          "Todo app",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: GoogleFonts.montserrat().fontFamily,
              ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const Homescreen(),
              ),
            );
          },
          child: const Icon(Icons.home)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Current Task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'New Task',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
