import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
void printJson() async {
  String _data = await getJson();
  debugPrint(_data);
}


  Future<String> getJson() async {
    String apiUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(apiUrl);

    return json.decode(response.body).toString();
  }
