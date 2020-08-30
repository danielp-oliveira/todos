import 'dart:io';

import 'package:dio/dio.dart';
import 'package:todos/models/todo.model.dart';
import 'package:todos/user.dart';

class TodoRepository {
  final String baseUrl = 'https://10.0.2.2:5001/v1/todos';

  Future<List<TodoItem>> getTodayTodos() async {
    var url = '$baseUrl/undone/today';

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List)
        .map((todos) => TodoItem.fromJson(todos))
        .toList();
  }

  Future<List<TodoItem>> getTomorrowTodos() async {
    var url = '$baseUrl/undone/tomorrow';

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List)
        .map((todos) => TodoItem.fromJson(todos))
        .toList();
  }

  Future<List<TodoItem>> getAllTodos() async {
    var url = baseUrl;

    Response response = await Dio().get(
      url,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
      ),
    );

    return (response.data as List)
        .map((todos) => TodoItem.fromJson(todos))
        .toList();
  }

  Future<TodoItem> add(TodoItem item) async {
    var url = baseUrl;

    try {
      Response response = await Dio().post(
        url,
        data: item,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
        ),
      );

      return TodoItem.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }

  Future<TodoItem> markAsDone(TodoItem item) async {
    var url = '$baseUrl/mark-as-done';

    try {
      Response response = await Dio().put(
        url,
        data: item,
        options: Options(
          headers: {HttpHeaders.authorizationHeader: 'Bearer ${user.token}'},
        ),
      );

      return TodoItem.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }
}
