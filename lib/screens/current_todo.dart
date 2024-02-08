import 'package:flutter/material.dart';
import 'package:todo_app/todo/todo.dart';

class CurrentTodo extends StatefulWidget {
  const CurrentTodo({super.key});

  @override
  State<CurrentTodo> createState() => _CurrentTodoState();

  void addTask(String title, String task) {
    _CurrentTodoState state = _CurrentTodoState();
    state.addTask(title, task);
  }
}

class _CurrentTodoState extends State<CurrentTodo> {
  List<TodoList> tasks = [];

  void addTask(String title, String task) {
    TodoList newTask = TodoList(title: title, task: task);
    setState(() {
      tasks.add(newTask);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          child: Center(child: Text('Entry ${tasks[index]}')),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
