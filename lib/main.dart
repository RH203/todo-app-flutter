import 'package:flutter/material.dart';
import 'package:todo_app/screens/homescreen.dart';
import 'package:todo_app/todo/todo.dart';

void main() {
  Todo todos = Todo();
  runApp(
    MaterialApp(
      title: "Todo APP",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1F41BB),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
          labelLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        useMaterial3: true,
      ),
      home: Homescreen(
        todos: todos,
      ),
    ),
  );
}
