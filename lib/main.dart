import 'package:flutter/material.dart';
import 'package:stppper_login/screens/Spl_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false ,
      home: Spl_screen(),
    ),
  );
}