import 'package:abcacb/views/alert_dialog_view.dart';
import 'package:abcacb/views/crud.dart';
import 'package:abcacb/views/listview_with_column.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Crud(),
    );
  }
}
