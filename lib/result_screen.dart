import 'package:flutter/material.dart';
import 'package:expendedwidget/home_screen.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
