import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page Two",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22.0,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.back(result: "This is From Page Two!");
              },
              child: const Text(
                "GO BACK!",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(Get.parameters['a'] ?? ""),
            const SizedBox(
              height: 20,
            ),
            Text(Get.parameters['b'] ?? ""),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/third');
        },
        child: const Text("NEXT"),
      ),
    );
  }
}
