import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../store/todo-list.store.dart';

class DescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final list = Provider.of<TodoListStore>(context);
    return Observer(
      builder: (context) => Padding(
        padding: EdgeInsets.all(8),
        child: Text(
          list.itemsDescription,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
