import 'package:bloc_todo/bloc/bloc_todo/todo_bloc_bloc.dart';
import 'package:bloc_todo/screens/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoBlocBloc(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      
      title: 'Flutter Bloc Todo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home:  TodoScreen(),
      )
    );
  }
}