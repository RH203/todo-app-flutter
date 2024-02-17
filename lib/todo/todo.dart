class Todo {
  final List<String> title = [];
  final List<String> task = [];

  void addTodo(String title, String task) {
    this.title.add(title);
    this.task.add(task);
  }

  List<String> getTitle() {
    return title;
  }

  List<String> getTask() {
    return task;
  }

  int lengthTodo() {
    return title.length;
  }
}
