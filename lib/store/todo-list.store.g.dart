// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo-list.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TodoListStore on _TodoListStore, Store {
  Computed<ObservableList<TodoModel>> _$pendingTodosComputed;

  @override
  ObservableList<TodoModel> get pendingTodos => (_$pendingTodosComputed ??=
          Computed<ObservableList<TodoModel>>(() => super.pendingTodos))
      .value;
  Computed<ObservableList<TodoModel>> _$completedTodosComputed;

  @override
  ObservableList<TodoModel> get completedTodos => (_$completedTodosComputed ??=
          Computed<ObservableList<TodoModel>>(() => super.completedTodos))
      .value;
  Computed<bool> _$hasCompletedTodosComputed;

  @override
  bool get hasCompletedTodos => (_$hasCompletedTodosComputed ??=
          Computed<bool>(() => super.hasCompletedTodos))
      .value;
  Computed<bool> _$hasPendingTodosComputed;

  @override
  bool get hasPendingTodos => (_$hasPendingTodosComputed ??=
          Computed<bool>(() => super.hasPendingTodos))
      .value;
  Computed<String> _$itemsDescriptionComputed;

  @override
  String get itemsDescription => (_$itemsDescriptionComputed ??=
          Computed<String>(() => super.itemsDescription))
      .value;
  Computed<ObservableList<TodoModel>> _$visibleTodosComputed;

  @override
  ObservableList<TodoModel> get visibleTodos => (_$visibleTodosComputed ??=
          Computed<ObservableList<TodoModel>>(() => super.visibleTodos))
      .value;
  Computed<bool> _$canRemoveAllCompletedComputed;

  @override
  bool get canRemoveAllCompleted => (_$canRemoveAllCompletedComputed ??=
          Computed<bool>(() => super.canRemoveAllCompleted))
      .value;
  Computed<bool> _$canMarkAllCompletedComputed;

  @override
  bool get canMarkAllCompleted => (_$canMarkAllCompletedComputed ??=
          Computed<bool>(() => super.canMarkAllCompleted))
      .value;

  final _$todosAtom = Atom(name: '_TodoListStore.todos');

  @override
  ObservableList<TodoModel> get todos {
    _$todosAtom.context.enforceReadPolicy(_$todosAtom);
    _$todosAtom.reportObserved();
    return super.todos;
  }

  @override
  set todos(ObservableList<TodoModel> value) {
    _$todosAtom.context.conditionallyRunInAction(() {
      super.todos = value;
      _$todosAtom.reportChanged();
    }, _$todosAtom, name: '${_$todosAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '_TodoListStore.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }

  final _$_TodoListStoreActionController =
      ActionController(name: '_TodoListStore');

  @override
  void addTodo(String description) {
    final _$actionInfo = _$_TodoListStoreActionController.startAction();
    try {
      return super.addTodo(description);
    } finally {
      _$_TodoListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeTodo(TodoModel todo) {
    final _$actionInfo = _$_TodoListStoreActionController.startAction();
    try {
      return super.removeTodo(todo);
    } finally {
      _$_TodoListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFilter(VisibilityFilter filter) {
    final _$actionInfo = _$_TodoListStoreActionController.startAction();
    try {
      return super.changeFilter(filter);
    } finally {
      _$_TodoListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeCompleted() {
    final _$actionInfo = _$_TodoListStoreActionController.startAction();
    try {
      return super.removeCompleted();
    } finally {
      _$_TodoListStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void markAllAsCompleted() {
    final _$actionInfo = _$_TodoListStoreActionController.startAction();
    try {
      return super.markAllAsCompleted();
    } finally {
      _$_TodoListStoreActionController.endAction(_$actionInfo);
    }
  }
}
