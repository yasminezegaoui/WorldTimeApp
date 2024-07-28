import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)?.settings.arguments;
    if (args != null && args is Map) {
      data = args;
    } else {
      data = {};  
    }
    // ignore: avoid_print
    print(data);


    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TextButton.icon(
              onPressed: (){
                Navigator.pushNamed(
                  context, 
                  '/location',
                );
              }, 
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Location'),
            ),
          ],
        ),
      ),
    );
  }
}