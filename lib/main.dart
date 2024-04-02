import 'package:flutter/material.dart';
import 'package:login_register_page/login.dart';
import 'package:login_register_page/register.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const MyLogin(),// Corrected route definition
      'register': (context) => MyRegister(),
      'home' : (context) => Myhome()
    },
  ));
}

