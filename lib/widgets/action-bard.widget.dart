import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/todo-list.store.dart';

class ActionBardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = Provider.of<TodoListStore>(context);
    return Column(
      children: [
        Observer(
          builder: (context) {
            return Column(
              children: [
                RadioListTile(
                  toggleable: true,
                  dense: true,
                  title: Text("All"),
                  value: VisibilityFilter.all,
                  groupValue: list.filter,
                  onChanged: (filter) => list.filter = filter,
                ),
                RadioListTile(
                  dense: true,
                  toggleable: true,
                  title: Text("Pending"),
                  value: VisibilityFilter.pending,
                  groupValue: list.filter,
                  onChanged: (value) => list.filter = value,
                ),
                RadioListTile(
                  dense: true,
                  toggleable: true,
                  title: Text("Completed"),
                  value: VisibilityFilter.completed,
                  groupValue: list.filter,
                  onChanged: (value) => list.filter = value,
                ),
              ],
            );
          },
        ),
        Observer(
          builder: (context) {
            return ButtonBar(
              buttonPadding: EdgeInsets.symmetric(horizontal: 28),
              children: [
                ElevatedButton(
                    onPressed: list.canRemoveAllCompleted
                        ? list.removeCompleted
                        : null,
                    child: Text("Remove all completed")),
                ElevatedButton(
                  onPressed:
                      list.canMarkAllCompleted ? list.markAllAsCompleted : null,
                  child: Text("Mark all completed"),
                ),
              ],
            );
          },
        )
      ],
    );
  }
}
