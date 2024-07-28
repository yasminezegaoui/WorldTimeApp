import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async{

    // make the request
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Algiers'));
    Map data = jsonDecode(response.body);
    // ignore: avoid_print
    // print(data);

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);
    // print(datetime);
    // print(offset);

    //create a date time object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    // ignore: avoid_print
    print(now);
  }

  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    // print('initState function ran');
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
}