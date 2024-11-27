import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/localization/language_controller.dart';

class LocalizationPage extends StatelessWidget {
  final myController = Get.put(LanguageController());

  LocalizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            "Localization",
            style: TextStyle(
              color: Colors.black,
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
            Text(
              "How Are You?".tr,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  onPressed: () {
                    print("ENGLISH");
                    myController.changeLocale('en', "US");
                  },
                  child: const Text(
                    "English",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  onPressed: () {
                    myController.changeLocale('gu', 'GU');
                  },
                  child: const Text(
                    "Gujarati",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  )),
                  onPressed: () {
                    myController.changeLocale('hi', "HI");
                  },
                  child: const Text(
                    "Hindi",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
