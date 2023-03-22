import 'package:bloc_todo/bloc/bloc_todo/todo_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    content: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: TextField(
                              controller:
                                  context.read<TodoBlocBloc>().controller,
                              decoration: InputDecoration(
                                  hintText: " Nombre : ",
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey),
                              onPressed: () {
                                context.read<TodoBlocBloc>().add(AllDataList());
                                Navigator.pop(context); ///PARA NO SALIR DE LA PAGINA
                                ///XXXXXXXX
                              },
                              child: Text("Precionar"))
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Icon(Icons.add),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "FLUTTER BLOC TODO",
          ),
        ),
        body:
            BlocBuilder<TodoBlocBloc, TodoBlocState>(builder: (context, state) {
          if (state is AddTask) {
            return ListView.builder(
              shrinkWrap: true,
                itemCount: state.todoList.length,
                itemBuilder: (_, index) {
                  var data = state.todoList[index];
                  return Container(
                    child: ListTile(
                      title: Text("${data.name}"),
                    ),
                  );
                }
            );
          }
          return Container();
        }
      )
    );
  }
}
