class Todo {
  static int _counter = 0;

  int id;
  String title;
  bool isDone;

  Todo({required this.title})
      : id = ++_counter,
        isDone = false;

  @override
  String toString() {
    String mark = isDone ? '[x]' : '[ ]';
    return '$mark $id. $title';
  }

  void complete() {
    isDone = true;
  }

  String get statusText => isDone ? 'выполнено' : 'в процессе';
}