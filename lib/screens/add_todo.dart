import 'package:flutter/material.dart';
import 'package:todo_app/common/widgets/fields/text_field_user.dart';
import 'package:todo_app/todo/todo.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class AddTodo extends StatefulWidget {
  final Todo todos;
  const AddTodo({super.key, required this.todos});

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

  void onPressForm() {
    String title = _titleController.text;
    String task = _taskController.text;

    widget.todos.addTodo(title, task);

    _titleController.clear();
    _taskController.clear();

    _showAwesomeSnackBar();
  }

  void _showAwesomeSnackBar() {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Success!',
        message: 'Successfully added a new task.',
        contentType: ContentType.success,
        inMaterialBanner: true,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
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
          onPressed: onPressForm,
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
