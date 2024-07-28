import 'package:flutter/material.dart';
import '../services/world-time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  Future<void> setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Algiers', flag: '', url: 'Africa/Algiers');
    await instance.getTime();
    Navigator.pushReplacementNamed(
      // ignore: use_build_context_synchronously
      context, 
      '/home',
      arguments: {
        'location': instance.location,
        'flage': instance.flag,
        'time': instance.time,
      }
    );
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
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('loading'),
      ),
    );
  }
}