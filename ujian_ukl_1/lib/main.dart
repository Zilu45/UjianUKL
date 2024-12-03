import 'package:flutter/material.dart';
import 'package:ujian_ukl_1/halaman-halaman/Bioskop.dart';
import 'package:ujian_ukl_1/halaman-halaman/Tiketku.dart';
import 'package:ujian_ukl_1/halaman-halaman/halamanDashboard.dart';
import 'package:ujian_ukl_1/halaman-halaman/halamanLogin.dart';
import 'package:ujian_ukl_1/halaman-halaman/splashscreen.dart';
import 'package:ujian_ukl_1/halaman-halaman/tiket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
       routes: {
        '/' : (_) => SplashScreen(),
        'dashboard' : (_) => Dashboard(),
        'bioskop' : (_) => Bioskop(),
        'tiket' : (_) => FilmBioskopPage(),
        'tiketku' : (_) => Tiketku(),
       },
    );
  }
}

