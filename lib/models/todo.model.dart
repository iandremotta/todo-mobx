import 'package:mobx/mobx.dart';
part 'todo.model.g.dart';

class TodoModel = _TodoModel with _$TodoModel;

abstract class _TodoModel with Store {
  _TodoModel(this.description);

  @observable
  String description = '';
  @observable
  bool done = false;
}
