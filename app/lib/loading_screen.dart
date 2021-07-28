import 'package:flutter/material.dart';
import 'dart:async';

import './third_screen.dart';

BuildContext? _context;

class LoadingScreen extends StatelessWidget {
  Timer? _timer;

  void startTimer() {
    int _start = 0;
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (Timer timer) {
      if (_start == 0) {
        // Navigator.pop(_context!);
        Navigator.push(
          _context!,
          MaterialPageRoute(builder: (context) => ThirdScreen()),
        );
        _timer!.cancel();
      } else {
        _start -= 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    startTimer();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/loading_screen.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Loading Screen'),
          ),
        ),
      ),
    );
  }
}
