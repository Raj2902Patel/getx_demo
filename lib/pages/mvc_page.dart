import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/mvc_controller.dart';

class MvcPage extends StatelessWidget {
  const MvcPage({super.key});

  // final myController = Get.put(MvcController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            "MVC PAGE",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Obx(
            //   () => Text(
            //     "Counter value is - ${myController.count}",
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontSize: 24.0,
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            // ),
            // GetX<MvcController>(
            //   init: MvcController(),
            //   builder: (myController1) => Text(
            //     "Counter Value is : ${myController1.count}",
            //     style: TextStyle(
            //       color: Colors.black,
            //       fontWeight: FontWeight.w400,
            //       fontSize: 20.0,
            //     ),
            //   ),
            // ),
            GetBuilder<MvcController>(
              init: MvcController(),
              // initState: (data) => print("INIT METHOD CALLED"),
              // dispose: (data) => print("DISPOSE METHOD CALLED"),
              builder: (myController1) => Text(
                "Counter Value is : ${myController1.count}",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
            ),
            GetBuilder<MvcController>(
              init: MvcController(),
              id: '1234',
              // initState: (data) => print("INIT METHOD CALLED"),
              // dispose: (data) => print("DISPOSE METHOD CALLED"),
              builder: (myController1) => Text(
                "Counter Value is : ${myController1.count}",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
              onPressed: () {
                var myController2 = Get.find<MvcController>();
                myController2.increment();
              },
              child: const Text(
                "INCREMENT",
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
