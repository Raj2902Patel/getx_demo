import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/user/user_controller.dart';

class UserView extends StatelessWidget {
  final myController = Get.put(UserController());
  UserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            "FETCH DATA",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: Obx(() {
        if (myController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemCount: myController.userList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Colors.lightBlueAccent,
                child: ListTile(
                  title: Text(myController.userList[index].name),
                  subtitle: Text(myController.userList[index].email),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
