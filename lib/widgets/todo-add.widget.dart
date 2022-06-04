import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../store/todo-list.store.dart';

class TodoAddWidget extends StatelessWidget {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoListStore>(context);
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        labelText: "Add a todo",
        contentPadding: EdgeInsets.all(8),
      ),
      controller: _textController,
      textInputAction: TextInputAction.done,
      onSubmitted: (value) {
        list.addTodo(value);
        _textController.clear();
      },
    );
  }
}
