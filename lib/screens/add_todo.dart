import 'package:flutter/material.dart';
import 'package:todo_app/common/widgets/fields/text_field_user.dart';
import 'package:todo_app/screens/current_todo.dart';

import 'package:google_fonts/google_fonts.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  late TextEditingController _titleController;
  late TextEditingController _taskController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _taskController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _taskController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ADD TASK",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
              fontFamily: GoogleFonts.montserrat().fontFamily,
              color: Theme.of(context).colorScheme.primary),
        ),
        const SizedBox(height: 20),
        TextFieldUser(
          prefixIcons: const Icon(Icons.title),
          hintTexts: "Title task",
          controller: _titleController,
        ),
        const SizedBox(height: 20),
        TextFieldUser(
            prefixIcons: const Icon(Icons.task),
            hintTexts: "Task",
            controller: _taskController),
        const SizedBox(height: 50),
        ElevatedButton(
          onPressed: () {
            String title = _titleController.text;
            String task = _taskController.text;

            CurrentTodo todo = CurrentTodo();

            todo.addTask(title, task);

            _titleController.clear();
            _taskController.clear();
          },
          child: Text(
            "Submit",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontFamily: GoogleFonts.montserrat().fontFamily,
                color: Theme.of(context).colorScheme.primary),
          ),
        )
      ],
    );
  }
}
