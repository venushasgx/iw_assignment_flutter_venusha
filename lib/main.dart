//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:iw_assignment_flutter_venusha/model/authModel.dart';
import 'package:iw_assignment_flutter_venusha/screens/home/home.dart';

import 'package:iw_assignment_flutter_venusha/screens/login/login.dart';
import 'package:iw_assignment_flutter_venusha/screens/postView/postView.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AuthModel(),
    child: const LoginApp(),
  ));
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
