import 'package:TodosMobx/widgets/action-bard.widget.dart';
import 'package:TodosMobx/widgets/description.widget.dart';
import 'package:TodosMobx/widgets/todo-add.widget.dart';
import 'package:TodosMobx/widgets/todo-list.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './store/todo-list.store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TodoListStore>.value(
          value: TodoListStore(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todos"),
      ),
      body: Column(
        children: [
          TodoAddWidget(),
          ActionBardWidget(),
          DescriptionWidget(),
          TodoListWidget(),
        ],
      ),
    );
  }
}
