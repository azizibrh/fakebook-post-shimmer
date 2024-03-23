import 'package:t25march/common/theme.dart';
import 'package:t25march/screens/base.dart';
import 'package:t25march/screens/profile/profile.dart';
import 'package:t25march/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook',
      debugShowCheckedModeBanner: false,
      theme: light,
      themeMode: ThemeMode.light,
      routes: {
        '/welcome': (context) => const Welcome(),
        '/base': (context) => const Base(),
        '/profile': (context) => const Profile(),
      },
      initialRoute: '/welcome',
    );
  }
}
