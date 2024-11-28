import 'package:get/get.dart';
import 'package:getx_demo/user/user_model.dart';
import 'package:getx_demo/user/user_service.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = <UserModel>[].obs;

  fetchUsers() async {
    try {
      isLoading(true);

      var userData = await APIService().fetchUsersData();
      userList.addAll(userData);
    } catch (error) {
      print(error);
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }
}
