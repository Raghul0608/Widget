import 'package:flutter/material.dart';

class Safearea extends StatelessWidget {
  const Safearea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text('This is the example for Safearea',
          style: TextStyle(color: Colors.black,
          fontSize: 20,
          ),
          ),
      ),
    );
  }
}
