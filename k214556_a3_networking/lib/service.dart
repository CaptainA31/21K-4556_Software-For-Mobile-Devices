import 'package:flutter/material.dart';

import 'model.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;




class NetworkService {

  Future <List<Post>> fetchPosts() async {
    List<Post> list = [];
    var url =
    Uri.https('jsonplaceholder.typicode.com', '/posts',);

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
        convert.jsonDecode(response.body) as List<dynamic>;

      for (var element in jsonResponse) {
        list.add(Post.fromJson(element as Map<String, dynamic>));
      }


      print('Request: success, list value: $list');
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }

    return list;
  }

}