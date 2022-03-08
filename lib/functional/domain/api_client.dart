import 'dart:convert';
import 'dart:io';
import 'package:app/functional/entity/post.dart';
import 'package:flutter/foundation.dart';

class ApiClient {
  final client = HttpClient();

  Future<List<Post>> getPosts() async {
    final json = await get('https://jsonplaceholder.typicode.com/posts');
    final posts = json
        .map((dynamic e) => Post.fromJson(e as Map<String, dynamic>))
        .toList(); //
    return posts;
    
  }

  Future<List<dynamic>> get(String ulr) async {
    final url = Uri.parse(ulr); // подготавливаем url, куда делать запрос
    final request = await client.getUrl(url); // делаем запрос
    final response = await request.close(); // ждем ответа
    final jsonStrings = await response
        .transform(utf8.decoder)
        .toList(); //преобразуем из байтов в стоки и преобразовываем в строки
    final jsonString = jsonStrings.join(); // склеиваем массив
    final json =
        jsonDecode(jsonString) as List<dynamic>; // декодируем строки как json
    return json;
  }
}
