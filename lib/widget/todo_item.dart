import 'package:first_try/model/todo.dart';
import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;
  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: (todo.isDone)
            ? const Icon(Icons.check_box)
            : const Icon(Icons.check_box_outline_blank),
        title: Text(todo.title),
        trailing: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            )),
      ),
    );
  }
}
