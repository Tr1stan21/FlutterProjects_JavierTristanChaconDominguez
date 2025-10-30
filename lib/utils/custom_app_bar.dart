import 'package:flutter/material.dart';

class CustomAppBar {
  static AppBar build(String title) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      backgroundColor: Colors.greenAccent,
    );
  }
}
