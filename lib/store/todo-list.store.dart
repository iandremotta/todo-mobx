import 'package:TodosMobx/models/todo.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
part 'todo-list.store.g.dart';

enum VisibilityFilter { all, pending, completed }
class TodoListStore = _TodoListStore with _$TodoListStore;

abstract class _TodoListStore with Store {
  @observable
  ObservableList<TodoModel> todos = ObservableList<TodoModel>();
  @observable
  VisibilityFilter filter = VisibilityFilter.all;

  @computed
  ObservableList<TodoModel> get pendingTodos =>
      ObservableList.of(todos.where((element) => element.done != null));

  @computed
  ObservableList<TodoModel> get completedTodos =>
      ObservableList.of(todos.where((element) => element.done == true));

  @computed
  bool get hasCompletedTodos => completedTodos.isNotEmpty;

  @computed
  bool get hasPendingTodos => pendingTodos.isNotEmpty;

  @computed
  String get itemsDescription {
    if (todos.isEmpty) {
      return "There are no Todos here. Why don't you add one?";
    }

    final suffix = pendingTodos.length == 1 ? 'todo' : 'todos';
    return '${pendingTodos.length} pending $suffix, ${completedTodos.length} completed';
  }

  @computed
  ObservableList<TodoModel> get visibleTodos {
    switch (filter) {
      case VisibilityFilter.pending:
        return pendingTodos;
      case VisibilityFilter.completed:
        return completedTodos;
      default:
        return todos;
    }
  }

  @computed
  bool get canRemoveAllCompleted =>
      hasCompletedTodos && filter != VisibilityFilter.pending;

  @computed
  bool get canMarkAllCompleted =>
      hasPendingTodos && filter != VisibilityFilter.completed;

  @action
  void addTodo(String description) {
    final todo = TodoModel(description);
    todos.add(todo);
  }

  @action
  void removeTodo(TodoModel todo) {
    todos.removeWhere((x) => x == todo);
  }

  @action
  void changeFilter(VisibilityFilter filter) => this.filter = filter;

  @action
  void removeCompleted() {
    todos.removeWhere((element) => element.done);
  }

  @action
  void markAllAsCompleted() {
    for (final todo in todos) {
      todo.done = true;
    }
  }
}
