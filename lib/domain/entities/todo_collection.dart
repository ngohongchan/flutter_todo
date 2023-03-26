import 'package:flutter_todo/domain/entities/todo_color.dart';

class TodoCollection {
  final ColelctionId id;
  final String title;
  final TodoColor color;

  TodoCollection({
    required this.id, required this.title, required this.color,
})

  factory TodoColelction.empty() {
    return TodoColelction(
      id: CollectionId(),
      title: '',
      color: TodoColor(colorIndex: 0),
    )
  }
}
