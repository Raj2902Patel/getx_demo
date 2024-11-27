import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageOne extends StatefulWidget {
  const PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page One",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                // var a = await Get.to(
                //   duration: Duration(seconds: 3),
                //   transition: Transition.zoom,
                //   curve: Curves.bounceOut,
                //   () => PageTwo(),
                //   arguments: "This is From Page One",
                // );
                // print(a);

                Get.toNamed(
                  '/second?a=10&b=20',
                );

                //Get.off(NextPage())
                //Get.offAll(NextPage())
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("NEXT PAGE!")
          ],
        ),
      ),
    );
  }
}
