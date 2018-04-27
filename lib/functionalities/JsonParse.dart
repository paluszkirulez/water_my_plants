//import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
Future<int> lengthJson() async  {
  List _data = await getJson();
  int _pageLength = _data.length;
  return _pageLength;
}
Future<List> printJson() async {
  List _data = await getJson();
  return _data;
}


  Future<List> getJson() async {
    String apiUrl = "https://www.zarosla.pl/wp-json/wp/v2/posts";
    //String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
    http.Response response = await http.get(apiUrl);

    return json.decode(response.body);
  }
