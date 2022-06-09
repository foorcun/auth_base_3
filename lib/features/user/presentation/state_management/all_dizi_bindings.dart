import 'package:auth_base_3/features/user/presentation/state_management/user_controller.dart';
import 'package:get/get.dart';

class AllUserBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
    // Get.lazyPut<SezonController>(() => SezonController());
  }
}
