part of 'todo_bloc_bloc.dart';

abstract class TodoBlocState extends Equatable {
  const TodoBlocState();
  
  @override
  List<Object> get props => [];
}

class TodoBlocInitial extends TodoBlocState {
    @override
  List<Object> get props => [];
}

class AddTask extends TodoBlocState {

  List<TodoModel> todoList = []; ////LLAMADODE LA LISTA
  AddTask(this.todoList); ///CREO QUE SE PASAN LOS DATOS ACA

    @override
  List<Object> get props => [todoList];
}