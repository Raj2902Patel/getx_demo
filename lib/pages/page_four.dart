import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/models/movie_model.dart';

class FourPage extends StatelessWidget {
  final movie = Movie(name: "Wanted", price: 200).obs;

  FourPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            "Page Four",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("${movie.value.name}"),
            ),
            const SizedBox(
              height: 15,
            ),
            Obx(
              () => Text("${movie.value.price}"),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
              onPressed: () {
                movie.value.name = "BAHUBALI";
                movie.value.price = 1000;
                movie.refresh();
              },
              child: const Text(
                "CHANGE DATA",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
