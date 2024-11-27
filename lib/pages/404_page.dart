import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Error Page",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22.0,
          ),
        ),
      ),
      body: const Center(
        child: Text("Error Page!"),
      ),
    );
  }
}
