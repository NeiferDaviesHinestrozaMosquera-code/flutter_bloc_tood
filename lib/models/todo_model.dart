// To parse this JSON data, do
//
//     final todoModel = todoModelFromJson(jsonString);

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'dart:convert';


////ACA SE EXTENDIO LA CLASE DEL MODELO PARA AGREGAR EL METODO BLOC CON EQUATABLE
class TodoModel extends Equatable {
    TodoModel({
        required this.name,
    });

    final String name;

    factory TodoModel.fromRawJson(String str) => TodoModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TodoModel.fromJson(Map<String, dynamic> json) => TodoModel(
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
    };
    
      @override
      // TODO: implement props
      List<Object?> get props => [name];
}
