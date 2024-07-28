import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  int counter = 0;

  void getData() async{

    // simulate network request for a username
    String username = await Future.delayed(const Duration(seconds: 3), (){
      return 'yasmine';
    });

    // simulate network request to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), (){
      return 'vega, musician,...';
    });

    // ignore: avoid_print
    print('$username - $bio');
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
     // ignore: avoid_print
     print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Choose a Location',
           style: TextStyle(
            color: Colors.white,
        ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        }, 
        child: Text('counter is $counter'),
      ),
    );
  }
}