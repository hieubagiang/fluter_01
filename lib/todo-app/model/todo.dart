class Todo {
  String title;
  String date;
  String content;

  Todo({this.title, this.date, this.content});

  @override
  String toString() {
    return 'Todo{title: $title, date: $date, content: $content}';
  }
}