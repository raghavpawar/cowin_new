// ignore_for_file:

import 'package:cowin_new/screens/registration_screen.dart';
import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'coWIN',
      home: RegistrationScreen(),
      navigatorKey: navigatorKey,
    );
  }
}
