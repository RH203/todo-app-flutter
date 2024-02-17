class TodoList {
  final title = [];
  final task = [];

  void addTodo(String title, String task) {
    this.title.add(title);
    this.task.add(task);
  }

  List showTodo() {
    return [title, task];
  }

}
