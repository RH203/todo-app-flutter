import 'package:characters/characters.dart';

class Todo {
  final List<String> title = [];
  final List<String> task = [];

  void addTodo(String title, String task) {
    this.title.add(title);
    this.task.add(task);
  }

  List<String> getTitle() {
    List<String> modifiedTitle = [];
    for (String t in title) {
      if (t.split("").length > 12) {
        modifiedTitle.add('${t.characters.take(15).toString()}...');
      } else {
        modifiedTitle.add(t);
      }
    }
    return modifiedTitle;
  }

  List<String> getTask() {
    List<String> modifiedTasks = [];
    for (String t in task) {
      if (t.split("").length > 12) {
        modifiedTasks.add('${t.characters.take(20).toString()}...');
      } else {
        modifiedTasks.add(t);
      }
    }
    return modifiedTasks;
  }

  int lengthTodo() {
    return title.length;
  }
}
