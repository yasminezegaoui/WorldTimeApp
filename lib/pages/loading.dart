import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async{
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    // ignore: avoid_print
    Map data = jsonDecode(response.body);
    // ignore: avoid_print
    print(data);
    // ignore: avoid_print
    print(data['title']);
  }

  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    // print('initState function ran');
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
}