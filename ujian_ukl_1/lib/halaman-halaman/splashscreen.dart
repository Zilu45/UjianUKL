import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ujian_ukl_1/halaman-halaman/halamanLogin.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _timerCountdown = 2; // Durasi timer dalam detik

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timerCountdown == 0) {
        timer.cancel();
        _navigateToHome();
      } else {
        setState(() {
          _timerCountdown--;
        });
      }
    });
  }

  void _navigateToHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 26, 60),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('Doksli/logo.png', alignment: Alignment.topCenter,),
          ],
        ),
      ),
    );
  }
}