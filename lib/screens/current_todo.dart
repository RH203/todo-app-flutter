import 'package:flutter/material.dart';
import 'package:todo_app/screens/view_todo.dart';
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      todos.getTitle()[index],
                      style: const TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      todos.getTask()[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ViewTodo()));
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Color.fromARGB(165, 0, 4, 255),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.delete,
                        color: Color.fromARGB(152, 255, 0, 0),
                      ),
                    )
                  ],
                ),
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      );
    } else {
      return const Center(
        child: Text(
          'No task today',
          style: TextStyle(fontSize: 30),
        ),
      );
    }
  }
}
