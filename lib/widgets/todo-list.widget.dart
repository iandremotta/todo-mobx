import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/todo-list.store.dart';

class TodoListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoListStore>(context);

    return Observer(
      builder: (context) {
        return Flexible(
            child: ListView.builder(
          itemCount: list.visibleTodos.length,
          itemBuilder: (context, index) {
            final todo = list.visibleTodos[index];
            return Observer(
              builder: (context) => CheckboxListTile(
                value: todo.done,
                onChanged: (value) => todo.done = value,
                title: Row(
                  children: [
                    Expanded(
                      child: Text(
                        todo.description,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => list.removeTodo(todo),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
      },
    );
  }
}
