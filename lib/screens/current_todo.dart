import 'package:flutter/material.dart';
import 'package:todo_app/todo/todo.dart';

class CurrentTodo extends StatelessWidget {
  final Todo todos;

  const CurrentTodo({super.key, required this.todos});

  @override
  Widget build(BuildContext context) {
    if (todos.lengthTodo() > 0) {
      return ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: todos.lengthTodo(),
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 80,
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Title: ${todos.getTitle()[index]}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text('Task: ${todos.getTask()[index]}',
                      style: const TextStyle(fontSize: 20)),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      );
    } else {
      return const Center(
        child: Text(
          'No task today',
          style: TextStyle(fontSize: 20),
        ),
      );
    }
  }
}
