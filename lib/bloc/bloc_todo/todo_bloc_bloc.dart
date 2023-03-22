import 'package:bloc/bloc.dart';
import 'package:bloc_todo/models/todo_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'todo_bloc_event.dart';
part 'todo_bloc_state.dart';

class TodoBlocBloc extends Bloc<TodoBlocEvent, TodoBlocState> {

  List<TodoModel> todoModel = [];
  final TextEditingController controller = TextEditingController();

  TodoBlocBloc() : super(TodoBlocInitial()) {
    on<TodoBlocEvent>((event, emit) {
      todoModel.add(TodoModel(name: controller.text));
      emit(AddTask(todoModel)); ///NO SE PARA QUE ES ESTO
    });
  }
}
