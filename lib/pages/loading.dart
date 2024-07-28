import 'package:flutter/material.dart';
import '../services/world-time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'loading';

  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Algiers', flag: '', url: 'Africa/Algiers');
    await instance.getTime();
    // ignore: avoid_print
    print(instance.time);
    setState(() {
      time = instance.time;
    });
  }

  @override
  void initState() {
    super.initState();
    // ignore: avoid_print
    // print('initState function ran');
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}